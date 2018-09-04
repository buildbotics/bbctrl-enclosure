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
