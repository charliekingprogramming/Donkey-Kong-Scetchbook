color sand      = #FAE73A;
color brown     = #BC5611;
color blue      = #1000FF;
color yellow    = #FFFF00;
color orange    = #FFAA00;
color green     = #00FF00;
color red       = #FF0000;
color white     = #FFFFFF;
color black     = #000000;
color gray      = #555555;
color darkgreen = #2B4D13;
color greenbrown= #859878;
color grey      = #7A8970;
color beige     = #FAF095;
color lightblue = #11A5D8;
color platformpurple = #D86B6B;
color platformborder = #C64E4E;

ArrayList<Platform> myPlatforms;


//mode framework variables
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int WIN = 5;
final int OPTIONS = 6;
int mode = INTRO;//1: intro screen, 2: game playing, 3



//brick planning variables
float gridx, gridy;
//float a, b, c, d;
float x, y;

boolean leftKey, rightKey, upKey, downKey;

void setup() {
  myPlatforms = new ArrayList<Platform>(); 
  
  gridx = 40;
  gridy = 100;
  //a = random (50, 550);
  //b = random (100, 665);
  //c = random (50, 550);
  //d = random (100, 665);
  
  int i = 0;
  //int i2 = 0;



  
  while (i < 91) {
   myPlatforms.add(new Platform() ); //calling constructor
   gridx = gridx + 40;
   
   
   if(gridy < 200){
    gridy = gridy +2; 
   }
   
   if(gridy > 200 && gridy <250){
     gridy = gridy - 2;
   }
   if (gridy > 250 && gridy < 350){
   gridy = gridy +2;
   }
   if (gridy > 350 && gridy < 450){
   gridy = gridy -2;
   }
   if (gridy > 450 && gridy < 455){
   gridy = gridy +2;
   }
   if (gridy > 455 && gridy < 600){
   gridy = gridy +2;
   }
   if (gridy > 600 && gridy < 640){
   gridy = gridy -2;
   }
   
   
   if (gridx >= 550) {
     gridx = 50;
     gridy = gridy + 100;
     }
     
   //  if (i >= 79 && i <= 91){
   //  gridy = 750;
   //  gridx = 50;
   //}
    i++;
    
  }
  
  //while (i2 < 14){
  //  gridy = 750;
  //  myPlatforms.add(new Platform() ); //calling constructor
  // gridx = gridx + 50;
  
  // if (gridx >= 550) {
  //   gridx = 50;
     
  //   }
  // i2++;
  //}
  
 // if (rowup) px = px +5;
 // if (rowdown) px = px - 5;
  
 //if (i=i+10) rowdown = true;
 //if (keyCode == LEFT) rowup = true;
 

 //if (keyCode == RIGHT) rowdown = false;
 //if (keyCode == LEFT) rowup = false;
 
  
  size(600, 800);
  
   x = 100;
  y = 680;
  
 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == WIN) {
    win();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
