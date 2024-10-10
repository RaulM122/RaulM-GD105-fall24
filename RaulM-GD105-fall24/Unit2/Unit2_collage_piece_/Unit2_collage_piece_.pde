// Declare image variables
PImage ichigo, riku, leon, sparda, zeref;

void setup() {
  size(800, 600);  // Canvas size
  
  // Load images (place image files in your Processing sketch folder)
  ichigo = loadImage("ichigo.png");
  riku = loadImage("riku.png");
  leon = loadImage("leon.png");
  sparda = loadImage("sparda.png");
  zeref = loadImage("zeref.png");
  
  // Scale images if needed
  ichigo.resize(200, 300);  // Width, height
  riku.resize(200, 300);
  leon.resize(200, 300);
  sparda.resize(200, 300);
  zeref.resize(200, 300);
  
  // Set background color
  background(229, 19, 36);  // Red background
}

void draw() {
  // Draw the images at specific positions
  
  image(ichigo, 50, 50);  // Top left
  image(riku, 300, 50);   // Top center
  image(leon, 550, 50);   // Top right
  image(sparda, 175, 350); // Bottom left-center
  image(zeref, 425, 350); // Bottom right-center
  
  // Add optional text or blending effects
  fill(0); // Black text
  textSize(32);
  text("Collage of Characters", 250, 30);
}
