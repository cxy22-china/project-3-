color black = #001219;
color DB = #005f73;
color ldb = #0a9396;
color lb = #94d2bd;
color midwhite = #e9d8a6;
color yellow = #ee9b00;
color orange = #ca6702;
color or = #bb3e03;
color red = #ae2012;
color dr = #9b2226;
color white = #FFFFFF;
color B = #000000;
color grey = #7C7B7A;
float  shade, thickness;

color selectedColor=grey;

float sliderX;
float sliderMin = 100;
float sliderMax = 700;
float thickenss;
PImage speed; 
boolean speedOn; //true or false


void setup() {

  size(1200, 1200);
  strokeWeight(2);
  sliderX = 500;
  shade = 123;

speed = loadImage("speed.png");
speedOn = false; 

}


void draw() {


//toolbar 
  strokeWeight(4);
  if (dist(0, 0, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(white);
  }


  fill(white);
  rect (0, 0, 1200, 200);
  fill(grey);
 
  
  //ishowspeed 
 if(mouseX>650 && mouseX< 755 && mouseY>35 && mouseY < 145) { 
   stroke(white); 
 } else { 
   stroke(black);
 }
 
  strokeWeight(2); 
  rect(645 ,35, 110,110); 
 image(speed, 650 ,40, 100,100); 
 
 
 //save buttons plus the other 2 
   if(mouseX>845 && mouseX< 890 && mouseY>20 && mouseY < 65) { 
   stroke(white); 
 } else { 
   stroke(black);
 }
   
   rect(845 ,20, 75, 45); 
     
      if(mouseX>845 && mouseX< 890 && mouseY>75 && mouseY < 120) { 
   stroke(white); 
 } else { 
   stroke(black);
 }
     
     rect(845 ,75 , 75, 45); 
     
       if(mouseX>845 && mouseX< 890 && mouseY>130 && mouseY < 175) { 
   stroke(white); 
 } else { 
   stroke(black);
 } 
     rect(845 ,130, 75 ,45); 
 
 //buttons 
  if (dist(100, 50, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }

  fill(black);
  circle( 100, 50, 50); //1

  if (dist(175, 50, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }

  fill(DB);
  circle( 175, 50, 50); //2


  if (dist(250, 50, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }
  fill(ldb);
  circle( 250, 50, 50); //3

  if (dist(325, 50, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }



  fill(lb);
  circle( 325, 50, 50); //4

  if (dist(100, 125, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }

  fill(midwhite);
  circle( 100, 100+25, 50); //5
  if (dist(175, 100+25, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }

  fill(yellow);
  circle( 175, 100+25, 50); //6


  if (dist(250, 100+25, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }

  fill(orange);
  circle( 250, 100+25, 50); //7


  if (dist(325, 100+25, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(grey);
  }


  fill(or);
  circle( 325, 100+25, 50); //8

  if (dist(400, 50, mouseX, mouseY) < 25) {
    stroke(grey);
  } else {
    stroke(grey);
  }

//slider 
  strokeWeight(4);
  fill(grey, grey, grey );
  line(400, 50, 600, 50);
  circle(sliderX, 50, 20);


  fill(selectedColor);
  rect(400, 100, 200, 30);

}

  void mouseClicked(){


//colorchangers for the colors 
    if (dist(100, 50, mouseX, mouseY) < 25) {
      selectedColor = black;
    }
    if (dist( 175, 50, mouseX, mouseY) < 25) {
      selectedColor = DB;
    }
    if (dist(250, 50, mouseX, mouseY) < 25) {
      selectedColor = ldb;
    }


    if (dist(325, 50, mouseX, mouseY) < 25) {
      selectedColor=lb;
    }
    if (dist(  100, 100+25, mouseX, mouseY) < 25) {
      selectedColor = midwhite;
    }
    if (dist( 175, 100+25, mouseX, mouseY) < 25) {
      selectedColor = yellow;
    }

    if (dist(  250, 100+25, mouseX, mouseY) < 25) {
      selectedColor = orange;
    }
    if (dist( 325, 100+25, mouseX, mouseY) < 25) {
      selectedColor = or;
    }
  }

  void mouseDragged() {
    
    //making speed drawable 
    controlSlider();
if(speedOn == false) {


    stroke(selectedColor);
    strokeWeight(thickenss);
   if (mouseY > 200) 
   
    line(pmouseX, pmouseY, mouseX, mouseY);//drawing line 

    thickenss = map(sliderX, 400, 600, 1, 75);
  } else {
    image(speed, pmouseX, pmouseY, 100, 100); 
  }
  }
  





  void mouseReleased() {
    controlSlider();
    if(mouseX>650 && mouseX< 755 && mouseY>35 && mouseY < 145){
    speedOn = !speedOn;
  }
  }

//slider controller
  void controlSlider() {
    if (mouseX > 400 && mouseX < 600 && mouseY > 25 && mouseY < 75) {
      sliderX = mouseX;
    } 
    
    if (mouseX> 10 && mouseX < 60 && mouseY > 10 && mouseY < 35) { 
    
    
    
  }
  }
   void speedOnOff(){
    if (speedOn == true) {
      stroke(255, 0, 0); 
      strokeWeight(5);
    } else { 
      stroke(0); 
      strokeWeight(1);   
  }
   }
