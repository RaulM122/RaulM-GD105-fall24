int cols, rows;
float[][] zOffsets;
float zOff = 0;
float scale = 20;
float flameSpeed = 0.02;
float flameSize = 100;

void setup() {
  size(600, 600);
  cols = width / int(scale);
  rows = height / int(scale);
  zOffsets = new float[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      zOffsets[i][j] = random(1000);
    }
  }
  noStroke();
}

void draw() {
  background(0);
  
  // Use mouseX and mouseY to control flame speed and size dynamically
  flameSpeed = map(mouseX, 0, width, 0.01, 0.1);   // Control speed with X
  flameSize = map(mouseY, 0, height, 50, 200);     // Control size with Y

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * scale;
      float y = j * scale;
      float noiseValue = noise(i * 0.1, j * 0.1, zOff);
      float flameHeight = map(noiseValue, 0, 1, flameSize * 0.5, flameSize);
      float flameWidth = map(noiseValue, 0, 1, 10, 30);
      drawFlame(x, y, flameWidth, flameHeight, noiseValue);
    }
  }
  zOff += flameSpeed;  // Animate the flame based on the speed
}

void drawFlame(float x, float y, float flameWidth, float flameHeight, float intensity) {
  // Pale turquoise color (adjust these values as needed)
  float r = map(intensity, 0, 1, 175, 64);  // Red to pale turquoise range
  float g = map(intensity, 0, 1, 238, 224); // Green to turquoise
  float b = map(intensity, 0, 1, 238, 208); // Blue for turquoise shades
  fill(r, g, b, 200);                        // Alpha for transparency
  
  // Draw the flame shape
  ellipse(x, height - y, flameWidth, flameHeight);
}
