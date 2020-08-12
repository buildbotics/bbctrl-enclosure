# Buildbotics Enclosure

## Color mapping

| HTML   | Pantone        |
|--------|----------------|
| f2ac45 | Coated 143 C   |
| e09f3e | Coated 7563 C  |
| d18d41 | Uncoated 124 U |
| cdcdcd | Cool Gray 2 C  |


## How ot update PDF from new DXF

 * Open existing SVG in Inkscape.
 * Import DXF.
 * Ungroup DXF once.
 * Delete unwanted layers.  Always keep outline layer for centering.
 * For each layer.
   * Select the the layer.
   * Move selection to correct layer.
   * Unlink clones (symbols) Shift-Alt-D.
   * Ungroup layer.
   * Switch to point edit mode.
   * Select all points in layer.
   * Join selected points.
   * Change layer fill and stroke.
 * Select new layers.
 * Center selected layers as a group on page.
 * Save to SVG.
 * Save to PDF.


## License
Copyright Buildbotics LLC 2016-2020.

This source describes Open Hardware and is licensed under the CERN-OHL-S v2

You may redistribute and modify this documentation and make products
using it under the terms of the CERN-OHL-S v2 (https:/cern.ch/cern-ohl).
This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED
WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY
AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-S v2
for applicable conditions.

Source location: https://github.com/buildbotics

As per CERN-OHL-S v2 section 4, should You produce hardware based on
these sources, You must maintain the Source Location clearly visible on
the external case of the CNC Controller or other product you make using
this documentation.
