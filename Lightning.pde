int x = 40;
int startx;
int starty;
int endx;
int endy;

void setup() {
  size (500, 500);
  background(0);
  noFill();
  frameRate(30);
}

void draw() {
  stroke(0, 0, 255);
  fill(0, 0, 0, 15);
  ellipse(0, 250, x, x);
  x = x + 10;
  if (x >1500) {
    x = 40;
  }
}
void mousePressed() {
  endy = 0;
  endx = 0;
  startx = 0;
  starty = 250;
  while (endy <=500) {
    strokeWeight(2);
    stroke(255, 255, 0);
    endx = startx + (int)(Math.random()*20);
    endy = starty + (int)(Math.random()*80-40);
    line (startx, starty, endx, endy);
    startx = endx;
    starty = endy;
  }
}
