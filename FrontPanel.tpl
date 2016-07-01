units(METRIC); // This must match the units of the DXF file
feed(762);

tool(1);
var dxf = require('dxf');

var layer = dxf.open('front_cnc.dxf')[0];
var zSafe = 3;

var countersink = function(layer) {
  rapid({z: zSafe});
  rapid(layer.center.x,layer.center.y);
  cut({z: -3});
  rapid({z: zSafe});
}

var perforate = function(layer) {
  for (var depth = .5; depth <= 1.5; depth+=.5) {
    rapid({z: zSafe});
    rapid(layer.start.x,layer.start.y)
    rapid({z:-(depth -.5)});
    cut(layer.end.x, layer.end.y,-depth)
    cut(layer.start.x, layer.start.y);
    rapid({z: zSafe});
  }
}


for(var i = 0; i < layer.length;i++) {
  if(layer[i].type == 1) perforate(layer[i]);
}

tool(2);
for(var i = 0; i < layer.length;i++) {
  if(layer[i].type == 2) countersink(layer[i]);
}
