class Star {
  int x, y, diam, speed;

  //Constructor
  Star () {
    x=int(random(width));
    y=int(random(width));
    diam= int(random(2, 4));
    speed=int(random(2, 5));
  }
  void display () {
    fill(255);
    circle(x, y, diam);
  }
  void move () {
    if (y>height+5) {
      y = -10;
    } else {
      y += speed;
    }
  }
  boolean reachedBottom() {
    return true;
  }
}
