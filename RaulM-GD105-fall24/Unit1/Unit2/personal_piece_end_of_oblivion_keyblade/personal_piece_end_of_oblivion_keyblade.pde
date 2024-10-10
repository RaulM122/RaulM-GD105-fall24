float angle = 0;
float rotationSpeed = 0.01;
float glowAlpha = 100;

void setup() {
  size(600, 600);
  background(0);
  smooth();
}

void draw() {
  background(0);
  
  // Keyblade rotates around its center
  translate(width / 2, height / 2);
  rotate(angle);
  
  // Draw the glowing aura around the Keyblade
  drawGlow(0, 0, 180, glowAlpha);  // Centered glow
  
  // Draw the keyblade itself
  drawKeyblade(0, 0);
  
  // Increase the rotation angle to animate
  angle += rotationSpeed;
}

void drawGlow(float x, float y, float size, float alpha) {
  for (int i = 0; i < 10; i++) {
    noFill();
    stroke(255, 100, 255, alpha - i * 10); // Glowing effect with fade
    strokeWeight(5 - i * 0.5);
    ellipse(x, y, size + i * 10, size + i * 10); // Expanding circles for glow
  }
}

void drawKeyblade(float x, float y) {
  // Blade
  fill(50, 50, 50);
  rect(x - 10, y - 100, 20, 200);  // Simplified long blade
  
  // Hilt guard
  fill(100, 100, 100);
  rect(x - 30, y - 120, 60, 20);  // Horizontal hilt
  
  // Handle
  fill(150, 150, 150);
  rect(x - 5, y + 100, 10, 40);  // Short handle
  
  // Key teeth (top part)
  fill(200, 200, 200);
  rect(x - 10, y - 150, 20, 30);  // Top key part (teeth)
  rect(x + 10, y - 150, 10, 10);  // Small tooth at the top
  
}
