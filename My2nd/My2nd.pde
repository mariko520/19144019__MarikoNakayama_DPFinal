size(640,480);
colorMode(RGB,255);
background(0);
noStroke();

for(int i=0; i<width; i++){
 if(i%10==0) stroke(200,0,0);
 
 else if(i%10==1) stroke(200,150,0);
 
 else stroke(0,0,145);
 
 line(i,0,i,height);}
 
 for(int i=0;i<30;i++){
   int x=(int)random(640);
   int y=(int)random(480);
   int w=(int)random(400);
   int r =(int)random(255);
   int g =(int)random(255);
   int b =(int)random(255);
   
   if(x<320){
     fill(255,g,b,100);}
     else{fill(r,g,255,100);}
     ellipse(x,y,w,w);}
 
 for(int i=0; i<100; i++){
   int x =i*64;
   int y =i*48;
   fill(255,255,255,200);
   ellipse(x,y,50,50);}
   
 for(int i=0; i<50; i++){
   int x =i*128;
   int y =i*96;
   fill(255,255,255,255);
   ellipse(x,y-200,90,90);}
   
 for(int i=0; i<50; i++){
   int x =i*128;
   int y =i*96;
   fill(255,255,255,255);
   ellipse(x,y-450,140,140);}
   
 for(int i=0;i<100; i++){
   int x = i*32;
   int y = i*24;
   fill(255,255,255,150);
   ellipse(x,y+200,25,25);}
   
 for(int i=0; i<100; i++){
   int x =i*16;
   int y =i*12;
   fill(255,255,255,100);
   ellipse(x,y+350,10,10);}
   
 
 
