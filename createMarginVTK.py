import vtk
import os
import numpy as np
from vtk.numpy_interface import dataset_adapter as dsa


file_name = "E:\PROGRAM\Project_PhD\TumorCoverage\P020\P020_Tumor.vtk"
colorArrayName = "E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaulation_Margin\ColorArray\P020_ColorArray.csv"

# file_name = "P019_ColorDistance_1.vtk"
colorArray = np.loadtxt(colorArrayName)

reader = vtk.vtkPolyDataReader()
reader.SetFileName(file_name)
reader.ReadAllScalarsOn()
reader.Update()
data = reader.GetOutput() #This contains all data from the VTK
print(data)
adaptedDataSet = dsa.WrapDataObject(data)
adaptedDataSet.PointData.append(colorArray,"Signed")
adaptedDataSet.PointData.SetActiveScalars("Signed")

writer = vtk.vtkDataSetWriter()
writer.SetFileName("E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaulation_Margin\MarginVTK\P020_Margin_test.vtk")

writer.SetInputData(adaptedDataSet.VTKObject)
writer.Write()

# file_name = "E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\P008_margin_uniformity.vtk"
# # colorArray = np.loadtxt(colorArrayName)
# reader = vtk.vtkUnstructuredGridReader()
# # reader = vtk.vtkPolyDataReader()
# reader.SetFileName(file_name)
# reader.ReadAllScalarsOn()
# reader.Update()
# data = reader.GetOutput() #This contains all data from the VTK
# print(data)