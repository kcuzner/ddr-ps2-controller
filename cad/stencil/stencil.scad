// Solder Stencil, tuned for the MP Select Mini 3D Printer
// Material: ABS
// Nozzle: 0.2mm
// Layer height: <0.1mm

// We use various dimensions, depending on where I pulled them from (PCB CAD is inches, physical measurements are mm)
inches = 25.4;
mm = 1;
degrees = 1;

//Set up for higher resolution circles
$fn = 60;

//Variables
//Generally:
//  Width is the X direction
//  Length is the Y direction

pad_manifold = 0.01 * mm; //padding for maintaining a manifold (avoiding zero-width shapes)

/////// PCB Dimensions

pcb_width = 100 * mm;
pcb_length = 40 * mm;
pcb_thickness = 1.6 * mm;

/////// Solder Paste Properties

// The solder paste should be exported with the entire page as its area, but
// without board edges. The board's corner is at a nice even number.
paste_origin_x = 100 * mm;
paste_origin_y = 90 * mm;

/////// Stencil

stencil_width = pcb_width + 20 * mm;
stencil_length = pcb_length + 20 * mm;
stencil_thickness = 0.1 * mm;

/////////////// Solder Stencil //////////////////

module PasteLayer() {
  translate([-paste_origin_x - pcb_width/2, -paste_origin_y - pcb_length/2, 0])
    linear_extrude(height=pcb_thickness + stencil_thickness + pad_manifold)
      import("../ddr-ps2-controller-F_Paste.svg");
}

module PcbStandin() {
  translate([-pcb_width/2, -pcb_length/2, -pad_manifold])
    cube([pcb_width, pcb_length, pcb_thickness + pad_manifold]);
}

module SolderStencil() { //`make` me
  rotate([180*degrees, 0, 0])
    difference() {
      translate([-stencil_width/2, -stencil_length/2, 0])
        cube([stencil_width, stencil_length, stencil_thickness + pcb_thickness]);
      PasteLayer();
      PcbStandin();
    }
}

SolderStencil();

