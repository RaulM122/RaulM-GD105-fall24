void setup() {
  size(1000, 1000);
}

void draw() {
  background(#F57700);

//eyes 
int eyeOffset = 300; // left and right of center
int eyeY = 300; // yPosition
int eyeWidth = 150; // eye dimensions
int eyeHeight = 100; // try tweaking this

// left eye
ellipseMode(RADIUS); // Set ellipseMode to RADIUS
strokeWeight(22);
fill(#8B0CF5);  // eye purple
stroke(#000000);
ellipse(width/40 + eyeOffset, eyeY, eyeWidth, eyeHeight);
fill(#F5E20A);
circle(width/40 + eyeOffset, eyeY, eyeHeight);

// right eye
ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
strokeWeight(22);
fill(#2B3131); 
stroke(#000000);
ellipse(width/2 + eyeOffset, eyeY, eyeWidth, eyeHeight);
fill(#17E5D9);
circle(width/2 + eyeOffset, eyeY, eyeHeight);

// demon mark
int mouthX = width/2 - eyeOffset;
  int mouthY = 500;
  int toothSize = 150;
  fill(#14F2F0);
  stroke(#000000);
  rectMode(CORNER);
  rect(mouthX, mouthY, eyeOffset*-2, eyeHeight);
  fill(#DE12B9); 
  
if(frameCount == 1) {
  save("output.png");
  println("saved as output.png");
  }
}
