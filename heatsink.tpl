var dxf = require('dxf');

var layers = dxf.open('./heatsink.dxf');

units(METRIC);
feed(170);
speed(10000);
tool(1);

var config = {
  delta: tool().diameter / 2,
  zSafe: 2,
  zStart: 0,
  zEnd: -5.5,
  zMax: 0.75,
  zSlope: 0.025
};


dxf.cut_layer(layers.outline, config);
rapid({z: config.zSafe});
