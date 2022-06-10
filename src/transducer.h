#ifndef TRANSDUCER_H
#define TRANSDUCER_H

#include <units/units.h>
#include <LinearMath/btVector3.h>

#include <array>
#include <cassert>
#include <cmath>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <random>
#include <math.h> 
#include <opencv2/core/core.hpp>

//#define M_PI 3.14159

/**
 * Objective: define a class transducer, which could generate the position and direction of each ray (sound wave)
 * 
 * Note: pay more attention to how to assign the angles and position of transducer in 3D model scene.
 * 
 * 
 */


template<size_t transducer_elements, size_t sample_count>
// template<size_t transducer_elements>
class transducer
{
public:
    struct transducer_element
    {
        btVector3 position; // unit: mm. 
        btVector3 direction; // unit
    };

    transducer(const float frequency/*MHz*/, const units::length::centimeter_t radius, units::length::millimeter_t transducer_element_separation,
               const btVector3 & position, const std::array<units::angle::degree_t, 3> & angles) :
        frequency(frequency),
        radius(radius),
        position(position), //unit: mm. position of the transducer with respect to world coordinate system (3D scene)
        angles(angles) // unit: degree. angles of the transducer with respect ot world coordinate system (3D scene), rotation order Z-> X -> Y
    {
        using namespace units::angle;
        using namespace units::literals;

        // Generate the evenly points
        std::string filename = "tumor_points.txt";
        std::ofstream fout(filename);
        if(!fout)
        {
            std::cout<<"File Not Opened"<<std::endl;  
        }
        float rotationMatrix[3][3] = {{0.3259, 0.4963, 0.8047},{0.4963,0.6346,-0.5924}, {-0.8047, 0.5924, -0.0395} }; //P003
        // float rotationMatrix[3][3] = {{0.5967, 0.3759, 0.7089},{0.3759,0.6496,-0.6609}, {-0.7089, 0.6609,0.2463} }; //P003_Repeated
         //float rotationMatrix[3][3] = {{0.5802, 0.5008, -0.6423},{0.5008, 0.4026, 0.7662},{0.6423, -0.7662, -0.0172}}; //P004
        // float rotationMatrix[3][3] = {{0.6829, 0.4921, 0.5399}, {0.4921, 0.2364, -0.8378},{-0.5399, 0.8378, -0.0807}}; //P007
        // float rotationMatrix[3][3] = {{0.2306, 0.4518, 0.8618},{0.4518, 0.7348, -0.5060},{-0.8618, 0.5060, -0.0347}}; //P008
        // float rotationMatrix[3][3] = {{0.6589, -0.5602, -0.5020},{-0.5602, 0.0799, -0.8245},{0.5020, 0.8245, -0.2612}}; //P010
        
         //float rotationMatrix[3][3] = {{0.5520, 0.4495, -0.7023},{0.4495, 0.5490, 0.7047},{0.7023, -0.7047, 0.1010}}; //P012
        // float rotationMatrix[3][3] = {{0.3784, -0.5743, -0.7260},{-0.5743, 0.4695, -0.6707},{0.7260, 0.6707, -0.1521}}; //P013
        // float rotationMatrix[3][3] = {{0.7293, 0.4307, 0.5316},{0.4307, 0.3146, -0.8459},{-0.5316, 0.8459, 0.0439}}; //P015
         //float rotationMatrix[3][3] = {{0.2805, 0.4257, 0.8603},{0.4257, 0.7481, -0.5090},{-0.8603, 0.5090, 0.0287}}; //P017
        // float rotationMatrix[3][3] = {{0.3641, 0.5750, 0.7327},{0.5750, 0.4800, -0.6625},{-0.7327, 0.6625, -0.1559}}; //P019
        //float rotationMatrix[3][3] = {{0.7883, 0.3859, 0.4792},{0.3859, 0.2965, -0.8736},{-0.4792, 0.8736, 0.0848}}; //P018_1
        //float rotationMatrix[3][3] = {{0.1758, 0.5527, 0.8146},{0.5527, 0.6294, -0.5463},{-0.8146,0.5463, -0.1949}}; //P018_2
        //float rotationMatrix[3][3] = {{0.1941, -0.3955, -0.8977},{-0.3955, 0.8059, -0.4406},{0.8977, 0.4406, 0}}; //P020
        //float rotationMatrix[3][3] = {{0, 0, 1},{0, 1, 0},{-1, 0, 0}}; //paper_example_center

        cv::Mat A = cv::Mat(3, 3, CV_32FC1, rotationMatrix);
        // int n = 0;
        
        float goldenRatio = (1 + sqrt(5))/2;
        // n_sample_points = 1024;
        
        for (size_t t = 0; t < transducer_elements; t++)
        {
            auto & samples_elements = elements[t];

            for(size_t i = 0; i < sample_count; i++)
            {
                    float a = t/goldenRatio;
                    float a_new = a - floor(a);
                    float phi = 2*M_PI*a_new;
                    float temp = float((2*t +1)) / float(transducer_elements);
                    float theta = acos(1 - temp);
                    float v[3] = {cos(phi)*sin(theta), sin(phi)*sin(theta), cos(theta)};
                    cv::Mat V = cv::Mat(3, 1, CV_32FC1, v);
                    cv::Mat new_V = A*V;
                    // std::cout << "-position " << -position[0] << "\n" << -position[1] << "\n" << position[2]<< std::endl;
                    samples_elements[i] = transducer_element
                    {   
                        // position, // position
                        btVector3(-position[0],-position[1],position[2]),
                        // btVector3(cos(phi)*sin(theta), sin(phi)*sin(theta), cos(theta))
                        btVector3(new_V.at<float>(0,0), new_V.at<float>(1,0),new_V.at<float>(2,0))
                    };
     
            }
            
            // std::cout << angle << std::endl;
            
        }

                // auto & samples_elements = elements[n];
                // for(size_t i = 0; i < sample_count; i++)
                // {
                //     float a = i/goldenRatio;
                //     float a_new = a - floor(a);
                //     float phi = 2*M_PI*a_new;
                //     float temp = float((2*i +1)) / float(sample_count);
                //     float theta = acos(1 - temp);
                
                //     samples_elements[i] = transducer_element
                //     {   
                //         btVector3(value_x, value_y, value_z), // position
                //         btVector3(cos(phi)*sin(theta), sin(phi)*sin(theta), cos(theta))
                //     };
                // }
                // n++;
        
        // fout.close();
        
        // assert(transducer_element_separation * transducer_elements < M_PI * radius);

        // radian_t x_angle { angles[0] };
        // radian_t y_angle { angles[1] };
        // radian_t z_angle { angles[2] };

        // auto amp = transducer_element_separation / radius;
        // const radian_t amplitude { amp.to<float>() }; // angle covered by a single TE
        // const radian_t angle_center_of_element { amplitude / 2.0f };
        // radian_t angle = -(amplitude * transducer_elements / 2) + angle_center_of_element;

    }

    transducer_element element(size_t index_ray, size_t index_sample) const
    {   
        auto samples_element = elements[index_ray];
        return samples_element[index_sample];
        // return elements[index_ray][index_sample];
        // return elements.at(i);
    }

    void print(bool direction) const
    {
        auto print_vec = [](const auto & v)
        {
            std::cout << v.x() << "," << v.z() << std::endl;
        };

        for (auto & element : elements)
        {
            print_vec(direction? element.direction : element.position);
        }
    }

    const float frequency;

    const btVector3 position, direction;
    const std::array<units::angle::degree_t, 3> angles;

private:
    const units::length::millimeter_t radius;

    // std::array<transducer_element, transducer_elements> elements;
    std::array<std::array<transducer_element, sample_count>, transducer_elements> elements;

};

#endif // TRANSDUCER_H
