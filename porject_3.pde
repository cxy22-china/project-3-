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
float sliderX, shade, thickness;

void setup()  {

  size(1200, 1200); 
  strokeWeight(2);
   sliderX = 500;
 shade = 123;
  
}
  void draw(){

      if(dist(0,0, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(white);
 }
  
    
    fill(white);
    rect (0, 0, 1200, 200);
   
       if(dist(100, 50, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
    
    fill(black); 
    circle( 100, 50, 50); //1
  
       if(dist(175, 50, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  
  fill(DB); 
  circle( 175, 50, 50); //2
  
  
       if(dist(250, 50, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  fill(ldb); 
  circle( 250, 50, 50); //3
  
       if(dist(325, 50, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  
  
  
  fill(lb); 
  circle( 325, 50, 50); //4
  
       if(dist(100, 125, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
 
  fill(midwhite); 
  circle( 100, 100+25, 50); //5
       if(dist(175, 100+25, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  
  fill(yellow); 
  circle( 175, 100+25, 50); //6
  
  
      if(dist(250, 100+25, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  
  fill(orange); 
  circle( 250, 100+25, 50); //7
  
  
      if(dist(325, 100+25, mouseX, mouseY) < 25) { 
   stroke(white); 
 } else { 
   stroke(grey);
 }
  
  
  fill(or); 
  circle( 325, 100+25, 50); //8
  
 strokeWeight(4); 
 fill(grey, grey,grey ); 
 line(400, 50, 600, 50); 
 circle(sliderX, 50, 20);
  
  
  
  }
