#include <Mathematics/DistPointHyperellipsoid.h>
#include <Mathematics/Vector2.h>
#include <Mathematics/Vector3.h>
#include <fstream>
#include <math.h> 
#include <string>
#include <iostream>
#include <sstream>
#include <time.h>
using namespace gte;

void main()
{
    clock_t start, end;
    
    std::ofstream output("E:/PROGRAM/Project_PhD/TumorCoverage/Results/Evaulation_Margin/temp.txt");
    start = clock();
    // Initial estimated ablation volume

    Ellipsoid3<double> ellipsoid;
    ellipsoid.center = { 2.7, -29.9, 6.1 }; //LPS <-RAS
    ellipsoid.axis[0] = { -0.8146, 0.5463, 0.1949 }; //LPS <- RAS
    //ellipsoid.axis[0] = { 0,0, 1 };
    ComputeOrthogonalComplement(1, ellipsoid.axis.data());
    ellipsoid.extent[0] = 22.5f;
    ellipsoid.extent[1] = 21.0f;
    ellipsoid.extent[2] = 21.0f;
    // The ellipsoid is defined implicitly by
    //   Q(x,y,z) = c[0] + c[1]*x + c[2]*y + c[3]*z
    //     + c[4]*x^2 + c[5]*x*y + c[6]*x*z + c[7]*y^2
    //     + c[8]*y*z + c[9]*z^2 = 0
    // A normal vector at (x,y,z) is
    //   grad[Q](x,y,z) = (
    //     c[1] + 2*c[4]*x + c[5]*y + c[6]*z,
    //     c[2] + c[5]*x + 2*c[7]*y + c[8]*z,
    //     c[3] + c[6]*x + c[8]*y + 2*c[9]*z)
    std::array<double, 10> c;
    ellipsoid.ToCoefficients(c);

    // Read .obj file and get the nearly evenly distributed points
    std::string line, v;
    float value_x, value_y, value_z;
    std::ifstream tumor_object("E:/PROGRAM/Project_PhD/TumorCoverage/P003/P003_Tumor.obj");
    
    Vector3<double> point; // distributed points
    Vector3<double> closest_point, grad, diff;
    double dot;
    DCPQuery<double, Vector3<double>, Ellipsoid3<double>> query;
    int i = 0;

    //while (!tumor_object.eof())
    while (i < 100000)
    {
        getline(tumor_object, line);
        if (line[0] == 'v' && line[1] != 'n') // read "v" points
        {
            i = i + 1;
            std::istringstream iss(line);
            iss >> v >> value_x >> value_y >> value_z;

            point[0] = value_x;
            point[1] = value_y;
            point[2] = value_z;

            auto result = query(point, ellipsoid);
            closest_point = result.closest;

            // Compute the angle between grad[Q](x,y) and (x,y)-closest(x,y).
            grad[0] = c[1] + 2.0 * c[4] * closest_point[0] + c[5] * closest_point[1] + c[6] * closest_point[2];
            grad[1] = c[2] + c[5] * closest_point[0] + 2.0 * c[7] * closest_point[1] + c[8] * closest_point[2];
            grad[2] = c[3] + c[6] * closest_point[0] + c[8] * closest_point[1] + 2.0 * c[9] * closest_point[2];
            Normalize(grad);
            diff = point - closest_point;
            Normalize(diff);
            dot = Dot(grad, diff);
            if (dot < 0)
            {
                dot = 1;
            }
            else
            {
                dot = -1;
            }

            output << dot * result.distance << "\n";
            //output << point[0] << "\t" << point[1] << "\t" << point[2] << "\t" << closest_point[0] << "\t" << closest_point[1] << "\t" << closest_point[2]<<"\t" << dot << "\t" << result.distance << "\n";
        }

    }
    end = clock();
    double time_taken = double(end - start) * 1000 / double(CLOCKS_PER_SEC);
    std::cout << "blend time taken (1) is: " << time_taken << " ms" << std::endl;

    output.close();

    //double xExtreme = 2.0f;
    //double yExtreme = 4.0f;
    //double zExtreme = 3.0f;
    //int const numXSamples = 32;
    //int const numYSamples = 64;
    //int const numZSamples = 48;
    //Vector3<double> point, K, grad, diff;
    //double dot, angle;
    //DCPQuery<double, Vector3<double>, Ellipsoid3<double>> query;
    //for (int z = 0; z < numZSamples; ++z)
    //{
    //    point[2] = -zExtreme + 2.0 * zExtreme * z / (numZSamples - 1.0);
    //     for (int y = 0; y < numYSamples; ++y)
    //    {
    //        point[1] = -yExtreme + 2.0 * yExtreme * y / (numYSamples - 1.0);
    //        for (int x = 0; x < numXSamples; ++x)
    //        {
    //            point[0] = -xExtreme + 2.0 * xExtreme * x / (numXSamples - 1.0);

    //            auto result = query(point, ellipsoid);
    //            K = result.closest;

    //            // Compute the angle between grad[Q](x,y) and (x,y)-closest(x,y).
    //            grad[0] = c[1] + 2.0 * c[4] * K[0] + c[5] * K[1] + c[6] * K[2];
    //            grad[1] = c[2] + c[5] * K[0] + 2.0 * c[7] * K[1] + c[8] * K[2];
    //            grad[2] = c[3] + c[6] * K[0] + c[8] * K[1] + 2.0 * c[9] * K[2];
    //            Normalize(grad);
    //            diff = point - K;
    //            Normalize(diff);
    //            dot = Dot(grad, diff);
    //            if (dot < 0.0)
    //            {
    //                grad = -grad;
    //                dot = -dot;
    //            }

    //            angle = std::acos(std::min(std::max(dot, -1.0), 1.0));

    //            output << "(x,y,z) = (" << point[0] << ", " << point[1] << ", " << point[2] << "); ";
    //            output << "(kx,ky) = (" << K[0] << ", " << K[1] << ", " << K[2] << "); ";
    //            output << "distance = " << result.distance << "; ";
    //            output << "diff = (" << diff[0] << ", " << diff[1] << ", " << diff[2] << "); ";
    //            output << "grad = (" << grad[0] << ", " << grad[1] << ", " << grad[2] << "); ";
    //            output << "angle = " << angle << std::endl;
    //        }
    //    }
    //}
    //output.close();
}
