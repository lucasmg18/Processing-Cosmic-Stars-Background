
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




/*

          ----------- G L O S S A R Y -----------

-----FUNCTIONS-------

--COORDINATES:
    //translate(height/2, width/2); //displaces the image to that point (this case to (centerX, centerY))



-----PAINTINGS------

---HAZ DE PUNTOS AL AZAR
    **
     * Double Random 
     * by Ira Greenberg.  
     * 
     * Using two random() calls and the point() function 
     * to create an irregular sawtooth line.
     *
    
    int totalPts = 300;
    float steps = totalPts + 1;
      
    void setup() {
      size(640, 360);
      stroke(255);
      frameRate(1);
    } 
    
    void draw() {
      background(0);
      float rand = 0;
      for  (int i = 1; i < steps; i++) {
        point( (width/steps) * i, (height/2) + random(-rand, rand) );
        rand += random(-5, 5);
      }
    }
---

--- ADDITIVE WAVES
       *
       * Additive Wave
       * by Daniel Shiffman. 
       * 
       * Create a more complex wave by adding two waves together. 
       *
       
      int xspacing = 8;   // How far apart should each horizontal location be spaced
      int w;              // Width of entire wave
      int maxwaves = 4;   // total # of waves to add together
      
      float theta = 0.0;
      float[] amplitude = new float[maxwaves];   // Height of wave
      float[] dx = new float[maxwaves];          // Value for incrementing X, to be calculated as a function of period and xspacing
      float[] yvalues;                           // Using an array to store height values for the wave (not entirely necessary)
      
      void setup() {
        size(640, 360);
        frameRate(30);
        colorMode(RGB, 255, 255, 255, 100);
        w = width + 16;
      
        for (int i = 0; i < maxwaves; i++) {
          amplitude[i] = random(10,30);
          float period = random(100,300); // How many pixels before the wave repeats
          dx[i] = (TWO_PI / period) * xspacing;
        }
      
        yvalues = new float[w/xspacing];
      }
      
      void draw() {
        background(0);
        calcWave();
        renderWave();
      }
      
      void calcWave() {
        // Increment theta (try different values for 'angular velocity' here
        theta += 0.02;
      
        // Set all height values to zero
        for (int i = 0; i < yvalues.length; i++) {
          yvalues[i] = 0;
        }
       
        // Accumulate wave height values
        for (int j = 0; j < maxwaves; j++) {
          float x = theta;
          for (int i = 0; i < yvalues.length; i++) {
            // Every other wave is cosine instead of sine
            if (j % 2 == 0)  yvalues[i] += sin(x)*amplitude[j];
            else yvalues[i] += cos(x)*amplitude[j];
            x+=dx[j];
          }
        }
      }
      
      void renderWave() {
        // A simple way to draw the wave with an ellipse at each location
        noStroke();
        fill(255,50);
        ellipseMode(CENTER);
        for (int x = 0; x < yvalues.length; x++) {
          ellipse(x*xspacing,height/2+yvalues[x],16,16);
        }
      }
------



*/
