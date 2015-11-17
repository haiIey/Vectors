//declare variables
float x, y, velX, velY, diam;
PVector loc;
PVector vel;
PVector acc;

void setup() {
  //set size of canvas
  size(800, 600);
  //initialize variables
  diam = 80;
  loc = new PVector(random(diam,width-diam);
  vel = PVector.random2D();
  acc = new PVector();
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;

  //wrap the ball's position
  if (x + diam/2 >= width) {
    x = -diam/2;     
  } else if (x - diam/2 <= 0) {
    x = width + diam/2;
  }
  if (y + diam/2 >= height) {
    y = -diam/2;
  } else if (y - diam/2 <= 0) {
    y = height + diam/2;
  }