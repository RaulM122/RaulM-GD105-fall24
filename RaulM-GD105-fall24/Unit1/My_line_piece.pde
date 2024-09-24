void setup(){
  size(500, 500);
  strokeWeight(22);
}

void draw(){
  background(242, 127, 12);
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
stroke(8, 8, 8);
noFill();
strokeWeight(35.0);
strokeJoin(BEVEL);
beginShape();
vertex(400, 400);
vertex(150, 350);
vertex(140, 80);
endShape();

// draw a diagonal line from the TL to the BR
stroke(24, 234, 106); // green
line(0    , 0,  // Top Left
     430  , 450); // Bottom Right
stroke(8, 8, 8);
noFill();
strokeWeight(35.0);
strokeJoin(MITER);
beginShape();
vertex(155, 160);
vertex(320, 165);
vertex(150, 80);
endShape();
}
