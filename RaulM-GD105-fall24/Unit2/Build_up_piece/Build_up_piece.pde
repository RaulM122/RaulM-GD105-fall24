int cols, rows;
float[][] zOffsets;
float zOff = 0;
float scale = 20;

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
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * scale;
      float y = j * scale;
      float noiseValue = noise(i * 0.1, j * 0.1, zOff);
      float flameHeight = map(noiseValue, 0, 1, 50, 200);
      float flameWidth = map(noiseValue, 0, 1, 5, 20);
      drawFlame(x, y, flameWidth, flameHeight, noiseValue);
    }
  }
  zOff += 0.02;
}

void drawFlame(float x, float y, float flameWidth, float flameHeight, float intensity) {
  // Black to dark red to simulate "black flames"
  float r = map(intensity, 0, 1, 50, 0);  // Dark red to black
  float g = map(intensity, 0, 1, 0, 0);   // Zero green
  float b = map(intensity, 0, 1, 0, 0);   // Zero blue
  fill(r, g, b, 200);                     // Apply alpha for transparency
  
  // Draw the flame shape (as ellipses for now)
  ellipse(x, height - y, flameWidth, flameHeight);
}
