//Zachary Hunt CS 3366-001
//Prokect 1 - Elevator Design

int circle1X, circle1Y;  // Position of circle button
int circle2X, circle2Y;
int circle3X, circle3Y;
int circle4X, circle4Y;
int circle5X, circle5Y;
int circle6X, circle6Y;
int circleOpenX, circleOpenY;
int circleCloseX, circleCloseY;
int circleBellX, circleBellY;
int circlePhoneX, circlePhoneY;
int circleSize = 93;   // Diameter of circle
color circleColor, baseColor;
color circleHighlight;
color currentColor;
boolean circleOver1 = false;
boolean circleOver2 = false;
boolean circleOver3 = false;
boolean circleOver4 = false;
boolean circleOver5 = false;
boolean circleOver6 = false;
int floor = 1;

void setup() {
  size(800, 900);
  circleColor = color(0);
  circleHighlight = color(100);
  baseColor = color(150);
  currentColor = baseColor;
  circle1X = width/2-50;
  circle1Y = height/2;
  circle2X = (width/2)+50;
  circle2Y = (height/2);
  circle3X = (width/2)-50;
  circle3Y = (height/2)-100;
  circle4X = (width/2)+50;
  circle4Y = (height/2)-100;
  circle5X = (width/2)-50;
  circle5Y = (height/2)-200;
  circle6X = (width/2)+50;
  circle6Y = (height/2)-200;
  
  circleOpenX = (width/2)-50;
  circleOpenY = (height/2)+140;
  circleCloseX = (width/2)+50;
  circleCloseY = (height/2)+140;
  circleBellX = (width/2)-50;
  circleBellY = (height/2)+240;
  circlePhoneX = (width/2)+50;
  circlePhoneY = (height/2)+240;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);

  if (circleOver1) {
    fill(circleHighlight);
  }
  if (circleOver2) {
    fill(circleHighlight);
  }
  if (circleOver3) {
    fill(circleHighlight);
  }
  if (circleOver4) {
    fill(circleHighlight);
  }
  if (circleOver5) {
    fill(circleHighlight);
  }
  if (circleOver6) {
    fill(circleColor);
  } else {
    fill(circleColor);
  }
  stroke(0);
  fill(255);
  rect(140.0, 10.0, 500.0, 800.0);
  fill(0);
  rect(250.0, 520, 300.0, 5.0);
  
  fill(0);
  ellipse(circle1X, circle1Y, circleSize, circleSize); 
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  ellipse(circle3X, circle3Y, circleSize, circleSize);
  ellipse(circle4X, circle4Y, circleSize, circleSize);
  ellipse(circle5X, circle5Y, circleSize, circleSize);
  ellipse(circle6X, circle6Y, circleSize, circleSize);
  
  ellipse(circleOpenX, circleOpenY, circleSize, circleSize);
  ellipse(circleCloseX, circleCloseY, circleSize, circleSize);
  ellipse(circleBellX, circleBellY, circleSize, circleSize);
  ellipse(circlePhoneX, circlePhoneY, circleSize, circleSize);
  
  textSize(128);
  fill(0);
  text("FLOOR", 160, 150);
  text(floor, 550, 150);
  
  textSize(50);
  fill(255);
  text("1", circle1X-11, circle1Y+13);
  textSize(50);
  fill(255);
  text("2", circle2X-11, circle2Y+13);
  textSize(50);
  fill(255);
  text("3", circle3X-11, circle3Y+13);
  textSize(50);
  fill(255);
  text("4", circle4X-11, circle4Y+13);
  textSize(50);
  fill(255);
  text("5", circle5X-11, circle5Y+13);
  textSize(50);
  fill(255);
  text("6", circle6X-11, circle6Y+13);
  
  textSize(40);
  fill(255);
  text("> | <", circleCloseX-32, circleCloseY+11);
  textSize(40);
  fill(255);
  text("< | >", circleOpenX-32, circleOpenY+11);
  
  textSize(20);
  fill(255);
  text("ALARM", circleBellX-30, circleBellY+8);
  
  textSize(20);
  fill(255);
  text("CALL", circlePhoneX-20, circlePhoneY+8);
}

void update(int x, int y) {
  if ( overCircle1(circle1X, circle1Y, circleSize) ) {
    circleOver1 = true;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
  }
  else if ( overCircle2(circle2X, circle2Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = true;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
  }
  else if ( overCircle3(circle3X, circle3Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = true;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
  }
  else if ( overCircle4(circle4X, circle4Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = true;
    circleOver5 = false;
    circleOver6 = false;
  }
  else if ( overCircle5(circle5X, circle5Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = true;
    circleOver6 = false;
  }
  else if ( overCircle6(circle6X, circle6Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = true;
  } 
  else {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
  }
}

void mousePressed() {
  if (circleOver1) {
    floor = 1;
  }
  if (circleOver2) {
    floor = 2;
  }
  if (circleOver3) {
    floor = 3;
  }
  if (circleOver4) {
    floor = 4;
  }
  if (circleOver5) {
    floor = 5;;
  }
  if (circleOver6) {
    floor = 6;
  }
}

boolean overCircle1(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle4(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle5(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle6(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
