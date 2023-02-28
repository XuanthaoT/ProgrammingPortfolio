// Xuanthao Tran | Oct 27 2022 | Caculator
// #ffb5a7 #fcd5ce #f8edeb #f9dcc4 #fec89a
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal = "0.0";
float l, r, result;
char op = ' ';
boolean left=true;

void setup() {
  size (340, 620);
  background (#f8edeb);
  numButtons[0] = new Button(50, 320, 60, 60, '7', false);
  numButtons[1] = new Button(130, 320, 60, 60, '8', false);
  numButtons[2] = new Button(210, 320, 60, 60, '9', false);
  numButtons[3] = new Button(50, 400, 60, 60, '4', false);
  numButtons[4] = new Button(130, 400, 60, 60, '5', false);
  numButtons[5] = new Button(210, 400, 60, 60, '6', false);
  numButtons[6] = new Button(50, 480, 60, 60, '1', false);
  numButtons[7] = new Button(130, 480, 60, 60, '2', false);
  numButtons[8] = new Button(210, 480, 60, 60, '3', false);
  numButtons[9] = new Button(50, 560, 60, 60, '0', false);

  opButtons[0] = new Button(50, 240, 60, 60, 'C', false);
  opButtons[1] = new Button(130, 240, 60, 60, '.', false);
  opButtons[2] = new Button(210, 240, 60, 60, '±', false);
  opButtons[3] = new Button(290, 240, 60, 60, '÷', false);
  opButtons[4] = new Button(290, 320, 60, 60, '×', false);
  opButtons[5] = new Button(290, 400, 60, 60, '−', false);
  opButtons[6] = new Button(290, 480, 60, 60, '+', false);
  opButtons[7] = new Button(210, 560, 220, 60, '=', false);
  opButtons[8] = new Button(50, 160, 60, 60, '√', true);
  opButtons[9] = new Button(130, 160, 60, 60, '²', true);
  opButtons[10] = new Button(210, 160, 60, 60, '³', true);
  opButtons[11] = new Button(290, 160, 60, 60, '%', true);
}
void draw() {
  background (#f8edeb);
  updateDisplay();
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i]. hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons. length; i++) {
    opButtons[i].display();
    opButtons[i]. hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("key:"+ key);
  println("keyCode:" + keyCode);
  if (keyCode == 49 || keyCode ==97) {
    handleEvent ("1", true);
  } else if (keyCode == 50 || keyCode ==98) {
    handleEvent ("2", true);
  } else if (keyCode == 51 || keyCode ==99) {
    handleEvent ("3", true);
  } else if (keyCode == 52 || keyCode ==100) {
    handleEvent ("4", true);
  } else if (keyCode == 53 || keyCode ==101) {
    handleEvent ("5", true);
  } else if (keyCode == 54 || keyCode ==102) {
    handleEvent ("6", true);
  } else if (keyCode == 55 || keyCode ==103) {
    handleEvent ("7", true);
  } else if (keyCode == 56 || keyCode ==104) {
    handleEvent ("8", true);
  } else if (keyCode == 57 || keyCode ==105) {
    handleEvent ("9", true);
  } else if (keyCode == 48 || keyCode ==96) {
    handleEvent ("0", true);
  } else if (keyCode == 67 || keyCode ==12) {
    handleEvent ("C", false);
  } else if (keyCode == 107 || keyCode == 61) {
    handleEvent("+", false);
  } else if (keyCode == 109 || keyCode == 45) {
    handleEvent("−", false);
  } else if (keyCode ==  106) {
    handleEvent ("×", false);
  } else if (keyCode == 10) {
    handleEvent ("=", false);
  } else if (keyCode == 46 || keyCode == 110) {
    handleEvent (".", false);
  } else if (keyCode == 47 || keyCode == 111) {
    handleEvent ("÷", false);
  }
}

void handleEvent (String val, boolean num) {
  if (num && dVal. length() < 19) {
    if (dVal.equals("0.0")) {

      dVal = val;
    } else {
      dVal += val;
    }
    if (left) {
      l = float(dVal);
    } else {
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0.0";
    l = 0.0;
    r = 0.0;
    result = 0.0;
    left = true;
    op = ' ';
  } else if (val.equals("+")) {
    op =  '+';
    left = false;
    dVal = "0.0";
  } else if (val.equals("−")) { 
    op =  '−'; 
    left = false;
    dVal = "0.0";
  } else if (val.equals("×")) {
    op =  '×';
    left = false;
    dVal = "0.0";
  } else if (val.equals("÷")) {
    op =  '÷';
    left = false;
    dVal = "0.0";
  } else if (val.equals(".")) {
    if (!dVal. contains(".")) {
      dVal+= ".";
    }
  } else if (val.equals ("=")) {
    performCalculation();
  }
}

void mouseReleased() {
  for (int i=0; i<numButtons. length; i++) {
    if (numButtons[i].on) {
      handleEvent(str(numButtons[i].val), true);
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].on && opButtons [i].val == 'C') {
      handleEvent ("C", false);
    } else if (opButtons[i].on && opButtons [i].val == '+') {
      handleEvent ("+", false);
    } else if (opButtons[i].on && opButtons [i].val == '−') {
      handleEvent ("−", false);
    } else if (opButtons[i].on && opButtons [i].val == '×') {
      handleEvent ("×", false);
    } else if (opButtons[i].on && opButtons [i].val == '÷') {
       handleEvent ("÷", false);
    } else if (opButtons[i].on && opButtons [i].val == '√') {
      op =  opButtons[i].val;
      left = false;
      dVal = "√";
    } else if (opButtons[i].on && opButtons [i].val == '²') {
      op =  opButtons[i].val;
      left = false;
      dVal += "²";
    } else if (opButtons[i].on && opButtons [i].val == '³') {
      op =  opButtons[i].val;
      left = false;
      dVal += "³";
    } else if (opButtons[i].on && opButtons [i].val == '%') {
      op =  opButtons[i].val;
      left = false;
      dVal = "%";
    } else if (opButtons[i].on && opButtons [i].val == '±') {
      op =  opButtons[i].val;
      left = false;
      dVal += "±";
    } else if (opButtons[i].on && opButtons [i].val == '.') {
      handleEvent(".", false);
    } else if (opButtons[i].on && opButtons [i].val == '=') {
      handleEvent ("=", false);
    }
  }
  println("L;" + l + "Op;" + op + "R:" + r + "Result:" + result +"left:" + left);
}

void updateDisplay() {
  rectMode(CENTER);
  fill(255);
  stroke(#ffb5a7);
  rect(width/2, 60, width-20, 100);
  fill(#ffb5a7);
  textAlign(RIGHT);
  if (dVal.length() < 11) {
    textSize(50);
  } else if (dVal.length() < 13) {
    textSize(45);
  } else if (dVal.length() < 15) {
    textSize(40);
  } else if (dVal.length() < 17) {
    textSize(35);
  } else if (dVal.length() < 19) {
    textSize(30);
  }
  text(dVal, width-40, 100);
}

void performCalculation() {
  if (op == '+') {
    result = l+r;
  } else if (op == '−') {
    result = l-r;
  } else if (op == '×') {
    result = l*r;
  } else if (op == '÷') {
    result = l/r;
  } else if (op == '√') {
    result = sqrt(l);
  } else if (op == '²') {
    result = sq(l);
  } else if (op == '³') {
    result = l*l*l;
  } else if (op == '%') {
    result = l/100;
  } else if (op == '±') {
    result = l*-1;
  } else if (op == '.') {
    result = l*-1;
  }
  dVal = str (result);
  l = result;
  left = true;
}
