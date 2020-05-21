float circleX = 25;
float circleY = 50;
float xspeed = 2;
float l;
float m;
PImage img;
PImage img2;
PImage img0;



void setup(){
  size(825,510);
  background(240);
  
  img = loadImage("111.png");
  img2= loadImage("222.png");
  img0= loadImage("000.png");
}

void draw() {
  
  
  if (l==1){
      
    noStroke();
    fill(240);
    rect(440,0,440,510);
    image(img, 500,50,280,420);
    noStroke();
    fill(240);
    rect(0,0,25,510);
    stroke(10);
    line(475,50,475,470);
    
    noStroke();
    fill(#555555,70);
    ellipse( circleX, circleY, 1, 1);
    if ( circleX <= 425){
    circleX = circleX + xspeed;
    } else if ( circleX > 425){
      circleX = 0 + xspeed;
      circleY = circleY + 50;
    }
  }
  
    if (l==2){
    noStroke();
    fill(240);
    rect(440,0,440,510);
    image(img2, 500,50,280,420);
    
    noStroke();
    fill(240);
    rect(440,0,60,510);
    rect(0,0,25,510);
    
    stroke(10);
    line(475,50,475,470);
    
    noStroke();
    fill(#555555,50);
    ellipse( circleX, circleY, 1, 1);
    
    if ( circleX <= 425){
    circleX = circleX + xspeed;
    } else if ( circleX > 425){
      circleX = 0 + xspeed;
      circleY = circleY + 50;
    }
  }
 
  
  else if (l==0){
    background(240);
    image(img0, 400,250,825,520);
  }
    
}

void keyReleased() {

  if (key=='='&& l==1){
    noStroke();
    fill(245,219,116,99);
    ellipse(circleX, circleY-25,20,20);
  }
  if (key=='-'&& l==1){
    noStroke();
    fill(#2E2E2E,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='e'&& l==1){
    noStroke();
    fill(#FF8000,99);
    ellipse(circleX, circleY-25,20,20);
  }
  if (key=='g'&& l==1){
    noStroke();
    fill(#02ED2B,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='o'&& l==1){
    noStroke();
    fill(255,230,0,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='p'&& l==1){
    noStroke();
    fill(#008EFF,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='m'&& l==1){
    noStroke();
    fill(163,136,200,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='s'&& l==1){
    noStroke();
    fill(#582A00,random(95,100));
    ellipse(circleX, circleY-25,20,20);
  }
  
  if (key=='l'&& l==1){
    noStroke();
    fill(220,179,212,99);
    ellipse(circleX, circleY-25,20,20);
  }
  
  
  
  if (key=='n'&& l==2){  
    noFill();
    stroke(0,90);
    bezier(circleX,circleY,circleX+random(10,100),circleY,circleX+32,
    circleY-31,circleX+14,circleY-31);
    bezier(circleX+14,circleY-31,circleX-4,circleY-31,
    circleX+random(10,60),circleY,circleX+random(10,100),circleY);
  } 
  
  if (key=='a'&& l==2){  
    noFill();
    stroke(0,90);
    //line(circleX,circleY,circleX+random(10,5), circleY+ random(10,15),circleX-random(10,15),circleY-random(10,15);
    bezier(circleX,circleY-random(-10,10),circleX+25,circleY-random(20,60),
    circleX,circleY-random(30,60),circleX+random(20,40),circleY-random(-20,20));
} 
  
  if (key=='h'&& l==2){  
    noFill();
    stroke(0,90);
    bezier(circleX,circleY,circleX+random(30,60),circleY,circleX+random(40,60),
    circleY-31,circleX+20,circleY-31);
    bezier(circleX+20,circleY-31,circleX-4,circleY-31,
    circleX+random(-10,-60),circleY,circleX+random(10,50),circleY);
  } 
  
  if (key=='l'&& l==2){  
    noFill();
    stroke(0,90);
    
    bezier(circleX,circleY,circleX+random(30,60),circleY,circleX+random(40,50),
    circleY-31,circleX+20,circleY-10);
    bezier(circleX+20,circleY-10,circleX-4,circleY-31,
    circleX+random(-10,-60),circleY,circleX+random(10,50),circleY);
  } 
  
}

void keyPressed(){
  if (key=='0'){
    newStart();
    l=0;
  }
  if (key=='1'){
    l = 1;
  }
  if (key=='2'){
    l = 2;
  }
  
}

void newStart(){
  circleX=25;
  circleY=50;
  size(825,510);
  background(240);
}
