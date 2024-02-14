
void setup(){
  
    size(1718,2400);   //--------Size of Image
  //bucle para crear muchas imagenes
  for(int h = 0; h < 20; h++){
    // high res
    int scaleFactor = 2;
    PGraphics hires = createGraphics(
                          width * scaleFactor,
                          height * scaleFactor,
                          JAVA2D);
    println("Generating high-resolution image...");
  
    beginRecord(hires);
    hires.scale(scaleFactor);
    
    
    background(0);   //--------BACKGROUND--------
    fill(255);
    //    ---------- P A I N T I N G -----------
    
    
    //-------Draw a lot of stars in random places
    int numStars = 850;
    float sx, sy, r1,r2;
    float minS = min(height, width), ratio = 20;
    float r1Min = minS/550, r1Max = minS/(ratio*150), r2Max = minS/(8*ratio), distr1tor2 = minS*7/(120*ratio) ;
    int numV;
    
    for(int i = 0; i < numStars; i++){
      r1 = random(r1Min,r1Max);
      r2 = random(2*r1 + distr1tor2- 1, r2Max);
      sx = random(r2 + 5, width- r2 -5); 
      sy = random(r2 + 5, height- r2 -5);
      numV = int(random(8,18));
      StarShape(numV, r1, r2, sx, sy);
    }
    //-------Draw less but bigger stars in random places
     numStars = 140;
    minS = min(height, width);
    ratio = 4; r1Min = minS/500; r1Max = minS/(ratio*150); r2Max = minS/(8*ratio); distr1tor2 = minS*7/(120*ratio) ;
    
    float r2Min = minS/650;
    for(int i = 0; i < numStars; i++){
      r1 = random(r1Min,r1Max);
      r2 = random(2*r1 + distr1tor2- 1, r2Max);
      sx = random(r2 + 5, width- r2 -5); 
      sy = random(r2 + 5, height- r2 -5);
      numV = int(random(8,18));
      StarShape(numV, r1, r2, sx, sy);
    }
    
    //-----------------------------
    
    
    
    endRecord();
  
    //hires.save("highres1.jpg");
    println("Finished");
    
   //<>//
    save("galaxiaf" + h + ".jpg");
    
  }
  
}

void painting(){
  
}


void draw(){
  
  
  
}


