void setup(){
  size(500,500);
  noLoop();
}

void draw(){
  noFill();
  background(255,255,255);
  for (int y =0; y<500; y+=20){
    for (int x=0;x<500;x+=20){
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
     
    }
  }
}

void mousePressed(){
  redraw();
}

class Die{
  int num;
  int Xcord;
  int Ycord;
  Die(int x, int y){
    roll();
    Xcord = x;
    Ycord = y;
  }
  void roll(){
    num = (int)(Math.random()*6+1);
  }
  void show(){
    rect(Xcord, Ycord, 20, 20);
    if (num==1){
      ellipse(Xcord+10, Ycord+10, 3, 3);
  } else if (num==2){
      ellipse(Xcord+5, Ycord+5, 3, 3);
      ellipse(Xcord+15, Ycord+15, 3, 3);
  } else if (num==3){
      ellipse(Xcord+5, Ycord+5, 3, 3);
      ellipse(Xcord + 10, Ycord+10,3,3);
      ellipse(Xcord + 15, Ycord+15, 3, 3);
  } else if (num==4){
      ellipse(Xcord+5, Ycord+5, 3,3);
      ellipse(Xcord+5, Ycord+15, 3,3);
      ellipse(Xcord+15, Ycord +5, 3,3);
      ellipse(Xcord+15, Ycord+15,3,3);
  } else if (num==5){
      ellipse(Xcord+5, Ycord+5, 3,3);
      ellipse(Xcord+15, Ycord+5,3,3);
      ellipse(Xcord+10, Ycord+10,3,3);
      ellipse(Xcord+5, Ycord+15,3,3);
      ellipse(Xcord+15, Ycord+15, 3,3);
  } else if (num==6){
      ellipse(Xcord+5,Ycord+5, 3,3);
      ellipse(Xcord+5,Ycord+10, 3,3);
      ellipse(Xcord+5,Ycord+15, 3,3);
      ellipse(Xcord+15,Ycord+5, 3,3);
      ellipse(Xcord+15,Ycord+10, 3,3);
      ellipse(Xcord+15,Ycord+15, 3,3);
  }
}
}
