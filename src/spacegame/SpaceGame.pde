//Xuanthao Tran | November 29 2022 | Space Game
Ship s1;
Timer dangerTimer, puTimer;
ArrayList<Danger> dangers = new ArrayList<Danger>();
ArrayList<Bstar> bstars = new ArrayList<Bstar>();
Star[] stars = new Star [80];
int dangerTime, dangerCount;
boolean play;

void setup() {
  size(800, 800);
  s1 = new Ship();
  dangerTimer = new Timer(500);
  dangerTimer.start();
  puTimer = new Timer(10000);
  puTimer.start();
  for (int i=0; i<stars.length; i++) {
    stars[i]= new Star();
  }
  play = false;
}

void draw() {
  // !play is play == false
  if (!play) {
    startScreen();
  } else {

    background (0);

    //Render Stars
    for (int i=0; i<stars.length; i++) {
      stars[i].display();
      stars[i].move();
    }
    noCursor();

    //add rocks
    if (dangerTimer.isFinished()) {
      dangers.add(new Danger());
      dangerTimer.start();
      println ("Dangers:" +dangers.size());
    }
    //add pu
    if (puTimer.isFinished()) {
      bstars.add(new Bstar());
      puTimer.start();
    }
    //render rocks
    for (int i = 0; i < dangers.size(); i++) {
      Danger d = dangers.get(i);
      if (d.reachedBottom()) {
        dangers.remove(d);
      } else {
        d.display();
        d.move();
      }
    }

    //render Bstar
    for (int i = 0; i < bstars.size(); i++) {
      Bstar p = bstars.get(i);
      if (p.reachedBottom()) {
        bstars.remove(p);
      } else {
        p.display();
        p.move();
      }
    }

   
    s1.display(mouseX, mouseY);
    infoPanel();

  }
}

void infoPanel () {
  fill (#F7DCDC, 128);
  rectMode (CENTER);
  rect (width/2, 15, 200, 40);
  fill (255);
  textSize(18);
  text("SOAR THROUGH SPACE!", width/2, 25);
}

void startScreen () {
  background (#F7DCDC);
  fill(255);
  textAlign (CENTER);
  textSize(50);
  text("Click to begin. . .", width/2, height/2);
  if (mousePressed) {
    play = true;
  }
}

void ticker () {
}
