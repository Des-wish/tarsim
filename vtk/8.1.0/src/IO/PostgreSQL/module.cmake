vtk_module(vtkIOPostgreSQL
  IMPLEMENTS
    vtkIOSQL
  TEST_DEPENDS
    vtkTestingIOSQL
    vtkTestingCore
  KIT
    vtkIO
  DEPENDS
    vtkCommonCore
    vtkIOSQL
  PRIVATE_DEPENDS
    vtkCommonDataModel
    vtkCommonExecutionModel
    vtksys
  )