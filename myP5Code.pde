//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var leftX = 200;
var rightX = 200;
var sunRadius = 100;
var speed = 1;
var growth = 0.5;


//🟢Draw Function - Runs on Repeat
draw = function(){
  noStroke()

  //Shapes and Color Go Here
  background(184, 236, 255);

  // sun
  fill(255, 170, 0);
  ellipse(200, 100, sunRadius, sunRadius);

  // clouds 
  fill(255, 255, 255);

  // left cloud
  ellipse(leftX, 150, 126, 97);
  ellipse(leftX+62, 150, 70, 60);
  ellipse(leftX-62, 150, 70, 60);

  // right cloud
  ellipse(rightX, 100, 126, 97);
  ellipse(rightX+62, 100, 70, 60);
  ellipse(rightX-62, 100, 70, 60);
  
  leftX -= speed;
  rightX += speed;
  sunRadius += growth;
  
  if(leftX<0){
  speed=1;
  };
  
  if (leftX>400){
    speed=-1;
  };
  
  if (rightX>400){
    speed=-1;
  };
  
  if(rightX<0){
  speed=1;
  };
  
  if(sunRadius>210){
    growth=-0.5;
  };
  
  if(sunRadius<100){
    growth=0.5;
  };
}

  


//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)


//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
void mousePressed(){

  
}



