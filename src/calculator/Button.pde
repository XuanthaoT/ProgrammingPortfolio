class Button {
  // member variable
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean on;
  boolean sp;

  //Constructor asigns value to all the int, color, char, boolean
  Button(int x, int y, int w, int h, char val, boolean sp) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    c1 = color(#fcd5ce);
    c2 = color(#ffb5a7);
    on = false;
    this.sp=sp;
  }

  // member methods
  void display () {
    if (sp) {
      if (on) {
        fill(#fec89a);
      } else {
        fill(#f9dcc4);
      }
      stroke(#fec89a);
      ellipse(x, y, w, h);
      stroke(#f8edeb);
      fill(#f8edeb);
      triangle(30, 125, 50, 150, 75, 125);
      triangle(110, 125, 130, 150, 155, 125);
      triangle(190, 125, 210, 150, 235, 125);
      triangle(270, 125, 290, 150, 315, 125);
      textAlign(CENTER);
      fill(255);
      textSize(30);
      text(val, x, y+20);
    } else {
      stroke(#ffb5a7);
      if (on) {
        fill(c2);
      } else {
        fill(c1);
      }
      rectMode(CENTER);
      rect(x, y, w, h, 28);
      textAlign(CENTER);
      fill(255);
      textSize(30);
      text(val, x, y+10);
    }
  }

  void hover(int mx, int my) {
    on = (mx>x-w/2 && mx<x+w/2 && my>y-h/2 && my<y+h/2);
  }
}
