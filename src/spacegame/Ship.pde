class Ship {
  int  x, y, w;
  PImage ship;

  //Constructor
  Ship() {
    x = 0;
    y = 0;
    w = 70;
    ship = loadImage ("ship (2).png");
  }

  void display(int tempx, int tempy) {
    x = tempx;
    y= tempy;
    imageMode(CENTER);
    ship.resize(70, 70);
    image (ship, x, y);
  }

  void move() {
  }

}
