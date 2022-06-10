#include <Mathematics/DistPointHyperellipsoid.h>
#include <Mathematics/Vector2.h>
#include <Mathematics/Vector3.h>
#include <fstream>
#include <math.h> 
#include <string>
#include <iostream>
#include <sstream>
#include <time.h>
//using namespace gte;

void main()
{
    clock_t start, end;
    
    std::ofstream output("E:/PROGRAM/Project_PhD/TumorCoverage/Results/Segmentation_variation/P007_1st_J.txt");
    std::ifstream tumor_object("E:/PROGRAM/Project_PhD/TumorCoverage/Results/Segmentation_variation/P007/Tumor_1st_J.obj");
    start = clock();
    // Initial estimated ablation volume

    // Read .obj file and get the nearly evenly distributed points
    std::string line, v;
    float value_x, value_y, value_z;
    //std::ifstream tumor_object("E:/PROGRAM/Project_PhD/TumorCoverage/P003/P003_Tumor.obj");
    
    Vector3<double> point; // distributed points
    Vector3<double> closest_point, grad, diff;
    double dot;
    DCPQuery<double, Vector3<double>, Ellipsoid3<double>> query;
    //int i = 0;

    while (!tumor_object.eof())
    //while (i < 100000)
    {
        getline(tumor_object, line);
        if (line[0] == 'v' && line[1] != 'n') // read "v" points
        {
           // i = i + 1;
            std::istringstream iss(line);
            iss >> v >> value_x >> value_y >> value_z;

            point[0] = value_x;
            point[1] = value_y;
            point[2] = value_z;

           
            //output << dot * result.distance << "\n";
            output << point[0] << "\t" << point[1] << "\t" << point[2] << "\n";
        }

    }
    end = clock();
    double time_taken = double(end - start) * 1000 / double(CLOCKS_PER_SEC);
    std::cout << "blend time taken (1) is: " << time_taken << " ms" << std::endl;

    output.close();


}
