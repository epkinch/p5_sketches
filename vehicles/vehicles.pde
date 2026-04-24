// Declare and construct two objects (h1, h2) from the class HLine 
HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(50, 2.5); 

void setup() 
{
  size(200, 200);
  frameRate(30);
}

void draw() { 
  background(204);
  h1.update(); 
  h2.update();  
} 

class Vehicle { 
    float xpos, ypos;
    void update() { 
      ypos += speed; 
      if (ypos > height) { 
        ypos = 0; 
      } 
      circle(0, ypos, width, ypos); 
    } 
} 