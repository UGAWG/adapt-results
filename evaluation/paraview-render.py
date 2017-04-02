import sys
#### import the simple module from the paraview
from paraview.simple import *
#### disable automatic camera reset on 'Show'
paraview.simple._DisableFirstRenderCameraReset()

# create a new 'XML Partitioned Unstructured Grid Reader'
piecespvtu = XMLPartitionedUnstructuredGridReader(FileName=[sys.argv[1]])
piecespvtu.CellArrayStatus = ['local', 'global', 'class_dim', 'class_id']
piecespvtu.PointArrayStatus = ['local', 'global', 'class_dim', 'class_id']

# get active view
renderView1 = GetActiveViewOrCreate('RenderView')
renderView1.ViewSize = [512, 490]

# show data in view
piecespvtuDisplay = Show(piecespvtu, renderView1)
# trace defaults for the display properties.
piecespvtuDisplay.ColorArrayName = [None, '']
piecespvtuDisplay.OSPRayScaleArray = 'class_dim'
piecespvtuDisplay.OSPRayScaleFunction = 'PiecewiseFunction'
piecespvtuDisplay.SelectOrientationVectors = 'None'
piecespvtuDisplay.ScaleFactor = 0.1
piecespvtuDisplay.SelectScaleArray = 'None'
piecespvtuDisplay.GlyphType = 'Arrow'
piecespvtuDisplay.ScalarOpacityUnitDistance = 0.04863874877919524
piecespvtuDisplay.GaussianRadius = 0.05
piecespvtuDisplay.SetScaleArray = ['POINTS', 'class_dim']
piecespvtuDisplay.ScaleTransferFunction = 'PiecewiseFunction'
piecespvtuDisplay.OpacityArray = ['POINTS', 'class_dim']
piecespvtuDisplay.OpacityTransferFunction = 'PiecewiseFunction'

# reset view to fit data
renderView1.ResetCamera()

# change representation type
piecespvtuDisplay.SetRepresentationType('Surface With Edges')

# Properties modified on piecespvtuDisplay
piecespvtuDisplay.Interpolation = 'Flat'

# Properties modified on piecespvtuDisplay
piecespvtuDisplay.Ambient = 0.24

# Properties modified on piecespvtuDisplay
piecespvtuDisplay.Diffuse = 1.0

# current camera placement for renderView1
renderView1.CameraPosition = [-1.3436599753825618, -1.4160276191809191, 1.728748494018452]
renderView1.CameraFocalPoint = [0.7229119658423154, 0.7317500356041017, 0.20806312877854227]
renderView1.CameraViewUp = [0.31545338347406404, 0.32715758217829727, 0.8907620778176493]
renderView1.CameraParallelScale = 0.8660254037844386

# save screenshot
SaveScreenshot(sys.argv[2], magnification=1, quality=100, view=renderView1)
