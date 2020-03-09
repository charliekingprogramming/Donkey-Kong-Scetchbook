void game() {
  background(0);


stroke(lightblue);
strokeWeight(4);
line( 150, 120, 150, 220);
line( 550, 220, 550, 330);
line( 350, 420, 350, 520);
line( 200, 320, 200, 420);
line( 65, 520, 65, 625);
line( 500, 620, 500, 712);

stroke(platformborder);
 strokeWeight(1);

  int i = 0;
    //int i2 = 0;
  while (i < 91) {
    Platform b = myPlatforms.get(i);
    b.act();
    b.show();
    i++;
  }
  
  //ball();
  paddle();

//while (i2 < 14) {
//    Platform b = myPlatforms.get(i2);
//    b.act();
//    b.show();
//    i2++;
//  }
  
}
  

    
    
void gameClicks() {
  
  
  
}


void paddle() {
  fill(red);
  ellipse(x, y, 40, 40);
  if (rightKey) x = x +3;
  if (leftKey) x = x - 3;
  
  if (downKey) y = y + 2;
  if (y > 680){
    y = y-2;
  }
  
  if (x > 480 && x < 520 && y > 584 && y < 712){
  if (upKey) y = y - 2;
  }
  if (x > 45 && x < 85 && y > 500 && y < 625){
  if (upKey) y = y - 2;
  }
  
  if (leftKey && y > 500 && y < 605){
    y = y + 0.17;
  }
    if (rightKey && y > 500 && y < 610){
    y = y - 0.17;
  }
  
  
  
  
  
  
  
  
  
}
