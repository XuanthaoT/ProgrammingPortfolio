class Danger {
  int x, y, diam, speed;
  PImage danger;

  //Constructor
  Danger () {
    x=int(random(width));
    y=-50;
    diam= int(random(30, 100));
    speed=int(random(3, 10));
    danger = loadImage ("danger (1).png");
  }
  void display () {
    imageMode(CENTER);
    danger.resize(diam, diam);
    image(danger, x, y);
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
}
