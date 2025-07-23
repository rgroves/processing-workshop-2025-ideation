float x1 = 0;
float y1 = 0;
float x2 = 0;
float y2 = 0;
float t = 0;
int nPresses = 0;

void setup() {
  size(1200, 675);
  background(#000000);
  strokeWeight(3);
}

void keyPressed() {
  if (key == 'n') {
    float nx = noise(10 + nPresses * .10);
    float ny = noise(5 + nPresses * .10);
    t += .01;
    nPresses += 1;
    
    x2 = map(nx, 0, 1, 0, width);
    y2 = map(ny, 0, 1, 0, height);
    stroke(#ff0000);
    point(x2, y2);
  } else if (key == 'r') {
    x1 = random(width + 1);
    y1 = random(height + 1);
    stroke(#ffffff);
    point(x1, y1);
  }
}

void draw() {
}

//for (int n = 0; n < 1000; n++) {
//  println(n);
//  x1 = random(width + 1);
//  y1 = random(height + 1);
//  stroke(#ffffff);
//  point(x1, y1);

//  float nx = noise(n/4+t);
//  float ny = noise(n/2+t);
//  t += .01;
  
//  x2 = map(nx, 0, 1, 0, width);
//  y2 = map(ny, 0, 1, 0, height);
//  stroke(#ff0000);
//  point(x2, y2);
  
//  delay(100);
//}
