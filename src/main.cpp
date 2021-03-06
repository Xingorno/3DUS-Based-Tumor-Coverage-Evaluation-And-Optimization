#include "transducer.h"
#include "scene.h"
#include "volume.h"
#include "psf.h"
#include "rfimage.h"


#include <cmath>
#include <iostream>
#include <fstream>
#include <units/units.h>
#include <nlohmann/json.hpp>
#include <time.h>
using namespace units::literals;
using namespace units::velocity;
using namespace units::length;
using namespace units::time;
using namespace units::angle;

constexpr meters_per_second_t speed_of_sound = 1540_m / 1_s; // [μm/μs], [m/s]
constexpr float transducer_frequency = 4.5f; // [Mhz]
// TODO: which way to get axial resolution is more persuasive?
constexpr millimeter_t axial_resolution = millimeter_t(1.45f / transducer_frequency); // [mm], the division can be deduced from Burger13 
constexpr size_t transducer_elements = 10000;
constexpr size_t samples_count = 1; 
constexpr radian_t transducer_amplitude = 70_deg;
constexpr centimeter_t transducer_radius = 3_cm;
constexpr centimeter_t ultrasound_depth = 15_cm; // [15cm -> μm]

constexpr microsecond_t max_travel_time = microsecond_t(ultrasound_depth / speed_of_sound); // [μs]

constexpr unsigned int resolution_axial = 145;//145; // [μm], from Burger13
using psf_ = psf<7, 13, 7, resolution_axial>;
using volume_ = volume<256, resolution_axial>;
using rf_image_ = rf_image<transducer_elements, max_travel_time.to<unsigned int>(), static_cast<unsigned int>(axial_resolution.to<float>()*1000.0f/*mm->μm*/)>;
// using transducer_ = transducer<transducer_elements>;
using transducer_ = transducer<transducer_elements, samples_count>;

std::random_device rd;
std::mt19937 generator(rd());
std::normal_distribution<double> distr(0.0001, 0.01);


int main(int argc, char** argv)

{
    clock_t start, end;
    start = clock();
    if (argc != 2)
    {
        std::cout << "Incorrect argument list." << std::endl;
        return 0;
    }

    // Step 1: Read 3D mesh model using json
    nlohmann::json json;
    {
        std::ifstream infile { argv[1] };
       // std::ifstream infile { filename };
        json << infile;
    } 

    for (int i = 0; i < argc; ++i) {
        std::cout << argv[i] << std::endl;
    }

    // Step 2: Initialization (including transducer, scatter distribution, point spread function and radio frequency image)
    // Step 2.1: transducer
    millimeter_t transducer_element_separation = transducer_amplitude.to<float>() * transducer_radius / transducer_elements;
    const auto & t_pos = json.at("transducerPosition"); //unit: mm. position of the transducer with respect to world coordinate system (3D scene)
    const auto & t_dir = json.at("transducerAngles"); // unit: degree. angles of the transducer with respect ot world coordinate system (3D scene), rotation order Z-> X -> Y
    std::array<units::angle::degree_t, 3> transducer_angles = {degree_t((float)t_dir[0]), degree_t((float)t_dir[1]), degree_t((float)t_dir[2])};
    // std::cout << "transducer postition: " << t_pos[0]<<","<< t_pos[1] << "," << t_pos[2]<< std::endl;
    // std::cout << "transducer angles: " << t_dir[0]<<","<< t_dir[1] << "," << t_dir[2]<< std::endl;
    transducer_ transducer(transducer_frequency, transducer_radius, transducer_element_separation,
                           btVector3(t_pos[0], t_pos[1], t_pos[2]), transducer_angles);
    
    // Step 2.2 scatter distribution
    static const volume_ texture_volume;

    // Step 2.3 point spread function
    const psf_ psf { transducer_frequency, 0.05f, 0.2f, 0.1f };

    // Step 2.4 radio frequency image
    rf_image_ rf_image { transducer_radius, transducer_amplitude };

    // std::cout << max_travel_time << std::endl;

    try
    {
        scene scene { json, transducer };

        scene.step(1000.0f);
        // while(true)
        //Set transducer movement 
        // for(int indexMov = 0; indexMov < 20; indexMov++)
        int indexMov = 0;
        {
            auto temp_pos = (float)t_pos[2];
            // auto temp_pos = (float)t_pos[2]   - indexMov;
            std::array<units::angle::degree_t, 3> movedAngle = {degree_t((float)t_dir[0]+0), degree_t((float)t_dir[1] + 0), degree_t((float)t_dir[2]+0)};
            transducer_ transducer_temp(transducer_frequency, transducer_radius, transducer_element_separation,
                           btVector3(t_pos[0], t_pos[1], temp_pos), movedAngle);
            rf_image.clear();

            // auto rays = scene.cast_rays<transducer_elements>();
            auto rays = scene.cast_rays<samples_count, transducer_elements>(transducer_temp);
            // auto rays = scene.cast_rays<samples_count, transducer_elements>(transducer);
            string filename = "RayCastingData_Ablation_P003_left_2.txt";
            //string filename = "RayCastingData_tumor_P008_up_down_3.txt";
            std::ofstream fout(filename);
            if(!fout)
            {
                cout<<"File Not Opened"<<endl;  return 0;
            }

            for (unsigned int ray_i = 0; ray_i < rays.size(); ray_i++)
            {
                const auto & ray = rays[ray_i];
                for (unsigned int sample_i = 0; sample_i < samples_count; sample_i++)
                {
                    const auto & sample = ray[sample_i];
                    // const auto & sample = ray[0];
                    // int num_segment = sample.size();
                    // for (auto & segment : ray)
                    // auto & segment = sample[0];
                    for(auto & segment: sample)
                    // auto & segment = sample[0];
                    {

                        auto point_start = segment.from;
                        auto to_end = segment.to;
                        auto direction = segment.direction;

                        fout<<point_start.x()<<"\t" << point_start.y() << "\t" << point_start.z()<< "\t" << to_end.x() << "\t" << to_end.y() << "\t"<< to_end.z() << "\t" << direction.x()<<"\t" << direction.y()<<"\t"<< direction.z()<<"\t";
                        
                    }
                    fout << "\n";
                }    

            }
            fout<<endl;
            fout.close();
        }
    }
    catch (const std::exception & ex)
    {
        std::cout << "The program found an error and will terminate.\n"
                  << "Reason:\n"
                  << ex.what() << std::endl;
    }
    end = clock();
    double time_taken = double(end - start) * 1000 / double(CLOCKS_PER_SEC);
    std::cout << "blend time taken (1) is: " << time_taken << " ms" << std::endl;
}
