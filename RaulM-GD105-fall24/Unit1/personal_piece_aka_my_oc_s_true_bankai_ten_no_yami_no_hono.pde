void setup() {
  size(800, 800);
  background(0);
  noLoop();  // Stop continuous drawing, only draw once unless animated
}

void draw() {
  background(0);  // Dark background
  
  // Draw the sword (centered)
  drawSword(width / 2, height / 2);
  
  // Add dark flames and glow around the sword
  drawDarkFlames();
  
  // Add glowing effect to the sword
  applyGlow();
}

void drawSword(float x, float y) {
  // Sword handle
  stroke(50);
  strokeWeight(10);
  line(x, y + 150, x, y + 300); // Handle

  // Sword blade
  noStroke();
  fill(30, 30, 30); // Dark gray for the blade
  beginShape();
  vertex(x - 10, y + 150);  // Bottom-left of blade
  vertex(x + 10, y + 150);  // Bottom-right of blade
  vertex(x + 30, y - 250);  // Top-right of blade (point)
  vertex(x - 30, y - 250);  // Top-left of blade (point)
  endShape(CLOSE);
  
  // Sword core glow (inner blade glow)
  noStroke();
  fill(255, 150, 0, 200);  // Orange glow
  beginShape();
  vertex(x - 5, y + 150);  // Bottom-left of inner glow
  vertex(x + 5, y + 150);  // Bottom-right of inner glow
  vertex(x + 10, y - 250);  // Top-right of inner glow
  vertex(x - 10, y - 250);  // Top-left of inner glow
  endShape(CLOSE);
  
  // Sword hilt (crossguard)
  fill(50);
  rect(x - 40, y + 140, 80, 20);
}

void drawDarkFlames() {
  int flameCount = 15;
  float flameX, flameY, flameSize;
  
  for (int i = 0; i < flameCount; i++) {
    // Flames around the sword (randomize around the blade)
    flameX = random(width / 2 - 80, width / 2 + 80);
    flameY = random(height / 2 - 300, height / 2 + 200);
    flameSize = random(40, 100);
    
    // Draw the dark flames
    noStroke();
    fill(255, 0, 0, 100);  // Red flame with transparency
    ellipse(flameX, flameY, flameSize, flameSize * 1.5);
  }
}

void applyGlow() {
  // Apply glow effect around the blade
  loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      color c = get(i, j);
      if (brightness(c) > 50) { // Detect bright parts (the flames and sword)
        int spread = int(random(-2, 2));  // Slight spreading of the bright pixels
        set(i + spread, j + spread, color(red(c), green(c), blue(c), 200));
      }
    }
  }
  updatePixels();
}
