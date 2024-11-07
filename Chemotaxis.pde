Minion[] minion;
PImage bg;
PImage minionpng;

void setup(){
  size(1406,791);
  minion = new Minion[(int)(Math.random()*35)+10];
  for(int i = 0; i < minion.length; i++)
    minion[i] = new Minion((int)(Math.random()*1406),(int)(Math.random()*791));
  bg = loadImage("lab.jpg");
}

void draw(){
  background(bg);
  for(int i = 0; i < minion.length; i++){
    minion[i].show();
    minion[i].move();
  }
  if(mousePressed)
    fill(0,200,0);
  fill(255,255,0);
 ellipse(mouseX, mouseY, 30, 30);
}


class Minion{
  int myX, myY, moveX, moveY;
  Minion(int x, int y){
    myX = x;
    myY = y;
    moveX = (int)(Math.random()*10)+1;
    moveY = (int)(Math.random()*10)+1;
  }
 
 void show(){
fill(255,255,0);
ellipse(30,30,myX,myY);
 }
 
 void move(){
   if(mousePressed){
     if(mouseX > myX)
       myX += moveX;
     else myX -= moveX;
     if(mouseY > myY)
       myY += moveY;
     else myY -= moveY;
   }
   else{
      myX = myX + (int)(Math.random()*5)-2;
      myY = myY + (int)(Math.random()*5)-2;
    }
 }
}
