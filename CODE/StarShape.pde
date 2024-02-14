void StarShape(int numPoint, float smallRad, float bigRad, float centerX, float centerY){
  //translate(centerX, centerY); //displaces the image to that point (this case to (centerX, centerY))
  
  int numVert = numPoint * 2;
  float x= 0.0, y = 0.0, theta = 0.0, rotTheta = TWO_PI/numVert;
  
  beginShape(); //function that creates figures from points (vertex) joining them or else
  
  for(int i = 0; i < numPoint; i++){
    for(int j = 0; j < 2; j++){
      x= centerX;
      y = centerY;
      if(j%2 == 0){
        x += cos(theta)* bigRad;
        y += sin(theta)* bigRad;
      }
      else {
        x += cos(theta)* smallRad;
        y += sin(theta)* smallRad;
      }
      
      vertex(x,y);
      theta += rotTheta;
    } //<>//
  }
  endShape(CLOSE);
  
}
