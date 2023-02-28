class Bstar {
  int x, y, diam, speed;
  char type;
  PImage bstar;

  //Constructor
  Bstar () {
    x=int(random(width));
    y=-50;
    diam= 100;
    speed=int(random(3, 10));
    bstar = loadImage ("star.png");
  }

  void display () {
    imageMode(CENTER);
    bstar.resize(diam, diam);
    image(bstar, x, y);
    fill(0);
    text(type, x, y);
  }
  void move () {
    y+=speed;
  }
  boolean reachedBottom () {
    if (y>height+10) {
      return true;
    } else {
      return false;
    }
  }
  boolean intersect(Ship ship) {
    float distance = dist(x, y, ship.x, ship.y);
    if (distance < 20) {
      return true;
    } else {
      return false;
    }
  }
}
