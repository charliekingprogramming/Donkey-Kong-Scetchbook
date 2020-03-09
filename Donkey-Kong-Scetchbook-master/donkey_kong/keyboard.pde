void keyPressed() {
 if (keyCode == RIGHT) rightKey = true;
 if (keyCode == LEFT) leftKey = true;
 if (keyCode == UP) upKey = true;
 if (keyCode == DOWN) downKey = true;


}
void keyReleased() {
 if (keyCode == RIGHT) rightKey = false;
 if (keyCode == LEFT) leftKey = false;
 if (keyCode == UP) upKey = false;
if (keyCode == DOWN) downKey = false;
}
