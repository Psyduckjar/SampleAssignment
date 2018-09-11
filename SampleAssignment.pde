void setup() {
  background(135,206,250);
  size(1000,1000);
  stroke(2);
  frameRate(25);
}

void draw() {
  legFoot();
  jeans();
  socks();
  shoe();
  bro(); 
 
}
String s = "my ankle is so cold!";

void bro() {
if (ok == false) {
textSize(45);
fill(255,255,255);
text(s, 10, 200);
}
else if (ok == true) {
 textSize(45);
  fill(135,206,250);
  s = "my ankle is so cold!";
  text(s, 10, 200);
  //this should work
  s = "thanks!";
  text(s, 10, 200);
      }
}

void shoe() {
    roundShoe();
    interiorShoe();
    heel();
    shoeLace();
     if (ok == true && x <= 950 && y >= 547 && z <= 680) {   
   x =  x + 1;
   y =  y - 2;
   z = z + 1;  
}
  else {
    ok = false;
  }

}

void roundShoe() {
  fill(0,0,0);
  noStroke(); 
  bezier(150,650,0,700,0,800,150,850);
}

void interiorShoe() {
  rect(150,650,730,200);
  fill(135,206,250);
  noStroke();
  bezier(50,650,200,750,450,750,600,650);

}

void heel() {
  fill(135,206,250);
  bezier(890,650,700,900,700,850,900,850);
  
}

void shoeLace() {
  noFill();
  stroke(255,255,255);
   beginShape();
  curveVertex(450,710);
  curveVertex(450,710);
  curveVertex(500,720);
  curveVertex(520,750);
  curveVertex(507,780);
  curveVertex(470,790);
  curveVertex(427,780);
  curveVertex(420,750);
  curveVertex(430,720);
  curveVertex(450,710);
  curveVertex(490,710);
  endShape();
  beginShape();
  curveVertex(430,710);
  curveVertex(430,710);
  curveVertex(480,720);
  curveVertex(500,750);
  curveVertex(487,780);
  curveVertex(450,790);
  curveVertex(407,780);
  curveVertex(400,750);
  curveVertex(410,720);
  curveVertex(430,710);
  curveVertex(470,710);
  endShape();  
}//fix

boolean ok = false;
//int x = 950;
//int y = 547;
//int z = 680;
int x = 890;
int y = 640;
int  z = 600;
void socks() {
  fill(255,182,193);
  beginShape();
   vertex(x,y);
   vertex(z,y);
   vertex(500,800);
   vertex(770,800);
  endShape();
  
}

void keyPressed() {
  ok = true;
    }
   
 
   





//unimportant stuff

void legFoot() {
   fill(255,224,189);
   stroke(0);
   beginShape();
   vertex(1100,0);
   vertex(1400,0);
   vertex(650,850);
   vertex(450,850);
   endShape(CLOSE);
} 

void jeans() {
  fill(0,0,128);
  stroke(0);
   beginShape();
   vertex(900,0);
   vertex(1400,0);
   vertex(940,550);
   vertex(650,550);
   endShape(CLOSE);
}
  
 
