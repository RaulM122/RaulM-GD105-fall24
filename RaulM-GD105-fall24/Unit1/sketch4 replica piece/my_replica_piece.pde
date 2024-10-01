int numShapes = 8;  // Number of symmetrical shapes
float rotationAngle;
PImage texture;

void setup() {
  size(800, 800);
  rotationAngle = TWO_PI / numShapes;
  texture = createNoiseTexture(800, 800);  // Creating a noise texture for the background
  noLoop();  // We want to draw this only once
}

void draw() {
  background(212, 12, 240);  // purple background
  image(texture, 0, 0);  // Apply the texture as background

  translate(width / 2, height / 2);  // Move to center of canvas

  for (int i = 0; i < numShapes; i++) {
    pushMatrix();
    rotate(i * rotationAngle);  // Rotational symmetry
    drawAbstractShape();  // Drawing the main pattern
    popMatrix();
  }
  
  // Add a Breaking Benjamin-like logo in the center if needed
  drawCenterLogo();
}

void drawAbstractShape() {
  stroke(255);  // White stroke color
  strokeWeight(20);
  noFill();
  
  // Draw a series of concentric shapes (circles, triangles, etc.)
  for (float i = 0; i < 200; i += 50) {
    ellipse(i, 0, 100, 100);  // Concentric circles
    line(i, 0, i + 50, 100);  // Diagonal lines for abstract look
    arc(i, 0, 100, 100, HALF_PI, PI);  // Arcs to add complexity
  }
}

void drawCenterLogo() {
  stroke(255);  // White for the logo
  noFill();
  strokeWeight(6);
  
  // Create a central, simple symmetrical shape like a cross or star
  for (float i = 0; i < TWO_PI; i += PI / 2) {
    line(0, 0, cos(i) * 100, sin(i) * 100);  // Cross-like central shape
  }
}

PImage createNoiseTexture(int w, int h) {
  PImage img = createImage(w, h, RGB);
  img.loadPixels();
  for (int i = 0; i < w * h; i++) {
    int c = int(random(50, 150));  // Create a grey noise texture for a worn-out look
    img.pixels[i] = color(c);
  }
  img.updatePixels();
  return img;
}
