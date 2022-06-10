import pyvista as pv
import numpy as np
import vtk
from vtk.numpy_interface import dataset_adapter as dsa


exportFileName = "E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\ColorDistanceVTK\P003_ColorDistance_Uniform_Repeated.vtk"
totalPointsArrayName = "E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\P003_PointsArray_Repeated.txt"
totalPointsArray = np.loadtxt(totalPointsArrayName)

# file_name = "P019_ColorDistance_1.vtk"
pointsArray = totalPointsArray[:, [0,1,2]]
colorArray= totalPointsArray[:,3]
pts = pointsArray.reshape(-1,3)
# pts = np.random.rand(512*3).reshape(-1,3)

# Make vtkPolyData of the points array
point_cloud = pv.PolyData(pts)
# point_cloud.plot(render_points_as_spheres=True, point_size=10)

# runs the delaunay 3D algorithm
mesh = point_cloud.delaunay_3d()
# mesh.add_field_array(colorArray, "signed")

writer = vtk.vtkUnstructuredGridWriter() 
writer.SetFileName(exportFileName)
writer.SetInputData(mesh)
writer.Write()



reader = vtk.vtkUnstructuredGridReader()
reader.SetFileName(exportFileName)
reader.ReadAllScalarsOn()
reader.Update()
data = reader.GetOutput() #This contains all data from the VTK
print(data)
adaptedDataSet = dsa.WrapDataObject(data)
adaptedDataSet.PointData.append(colorArray,"Signed")
adaptedDataSet.PointData.SetActiveScalars("Signed")


writer = vtk.vtkDataSetWriter()
writer.SetFileName(exportFileName)
writer.SetInputData(adaptedDataSet.VTKObject)
writer.Write()
# colorArray = np.loadtxt(colorArrayName)
# reader = vtk.vtkUnstructuredGridReader()
# reader = vtk.vtkPolyDataReader()
# reader.SetFileName(file_name)
# reader.ReadAllScalarsOn()
# reader.Update()
# data = reader.GetOutput() #This contains all data from the VTK
# print(data)