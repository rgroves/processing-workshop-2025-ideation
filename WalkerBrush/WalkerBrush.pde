ArrayList<RandomWalker> walkers;

class RandomWalker {
  float x;
  float y;
  int lifeSpan;

  RandomWalker(float x, float y) {
    this.x = x;
    this.y = y;
    this.lifeSpan = int(random(10, 100));
  }

  void step() {
    if (lifeSpan <= 0) {
      return;
    }

    this.lifeSpan--;
    println(this.lifeSpan);
    
    this.x += random(-1, 1);
    this.y += random(-1, 1);
  }

  void render() {
    stroke(random(255), random(255), random(255));
    point(this.x, this.y);
  }
}

void setup() {
  size(800, 600);
  background(0);
  frameRate(60);

  walkers = new ArrayList<RandomWalker>();
}

void mouseDragged() {
  walkers.add(new RandomWalker(mouseX, mouseY));
}

void draw() {
  for (int i = 0; i < walkers.size(); i++) {
    RandomWalker rw = walkers.get(i);
    rw.step();
    rw.render();
  }
}
