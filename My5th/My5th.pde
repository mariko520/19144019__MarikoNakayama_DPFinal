int xArray[] = new int[100];
int yArray[] = new int[100];
int xspeed[] = new int[100]; 
int yspeed[] = new int[100];

int xdirection[] = new int[100]; 
int ydirection[] = new int[100];

void setup(){
  size(640, 480);
  colorMode(RGB, 255);
  background(0);
  frameRate(10);
  
  for(int i=0; i<100; i++){
    xArray[i] = (int)random(640);
    yArray[i] = (int)random(480);
    xspeed[i] = (int)random(15) + 5; 
    yspeed[i] = (int)random(20) + 5;
    
   
    if(random(2) < 1){ 
       xdirection[i] = 1;
    }
    else{
       xdirection[i] = -1;
    }
    
    if(random(2) < 1){
      ydirection[i] = 1;
    }
    else{
      ydirection[i] = -1;
    }
  }
}

void draw(){
 noStroke();
 fill(0);
 rect(0, 0, width, height);
 
 
 for(int i=0; i<100; i++){ 
   
 int r =(int)random(200) +55;
 int g =(int)random(200) +55;
 int b =(int)random(150) +105;
 
 noStroke();
 fill(r, g, b,250);

   rect(xArray[i], yArray[i], 10, 20);
   
   fill(r,g,b,100);
   rect(xArray[i]-5,yArray[i]-10,20,40);
   
   fill(r,g,b,60);
   rect(xArray[i]-10,yArray[i]-20,40,50);
   
   if(xArray[i] > 640){
     xdirection[i] = -1;
   }
   else if(xArray[i] < 0){
     xdirection[i] = 1;
   }
   
   if(yArray[i] > 480){
   ydirection[i] = -1;
   }
   
   else if(yArray[i] <0){
     ydirection[i] = 1;
   }
   xArray[i] += xdirection[i] * xspeed[i];
   yArray[i] += ydirection[i] * yspeed[i];
 }
}
