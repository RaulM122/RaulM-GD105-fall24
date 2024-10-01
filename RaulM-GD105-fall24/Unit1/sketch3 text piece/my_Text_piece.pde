PFont Akoshi;
float flickerAmount;

void setup() {
  size(1000, 1000); 
  Akoshi = loadFont("ArimaKoshi-ExtraBold-90.vlw");
  textFont(Akoshi);
  flickerAmount = random(0.9, 1.1);
}

void draw() {
  background(#CE00EA);
  
  // Create a flickering effect
  flickerAmount = random(0.9, 1.1);

  // Draw "black flame" shadow and glow layers behind the text
  drawBlackFlameText("Ten no Yami no Hono", width / 2, height / 2);
  
  // Draw the main text on top of the flame effect
  fill(0); // Black text
  textAlign(CENTER, CENTER);
  text("Ten no Yami no Hono", width / 2, height / 2);
}

void drawBlackFlameText(String txt, float x, float y) {
  for (int i = 10; i > 0; i--) {
    // Simulate the flame "glow" by using random offsets and gradually darker colors
    float offsetX = random(-i, i) * flickerAmount;
    float offsetY = random(-i, i) * flickerAmount;

    // Darker as we move outward from the text
    fill(0, 0, 0, 50 + i * 20); // Semi-transparent black

    // Shadow or flame effect
    text(txt, x + offsetX, y + offsetY);
  }
  
  if (frameCount ==1) {
    save("output.png");
    println("saved as output.png!");
  }
}
