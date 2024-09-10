size(500, 500);

// draw a diagonal line from the TR to the BL
stroke(215 , 31, 252); // purple line
line(500   , 0,   // Top Right
     0     , 500); // Bottom Left
     
// draw a horizontal line in the left center
stroke(193, 0, 44); // red
line(0    , 300, 
     500  , 300);
//line(0   , height/2
//    width, height/2);

// draw a vertical line from the Top Right
// to the bottom right center of the canvas
stroke(41, 189, 193); // turquoise
line(width/2, height/2,
     width/2, height);

// draw a diagonal line from the TL to the BR
stroke(24, 234, 106); // green
line(0    , 0,  // Top Left
     500  , 500); // Bottom Right
