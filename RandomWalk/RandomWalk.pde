class Walker {
  float x;
  float y;
  float stepsize;
  
  Walker() {
    x = width/2;
    y = height/2;
    stepsize = 5;
    rectMode(CENTER);
    colorMode(RGB, 100);
  }
  
  void display() {
    fill(x/width*100, y/height*100, 10);
    rect(x,y,stepsize,stepsize);
  }
  
  void step() {
    
    // step particle
    int choice = int(random(4));
    if (choice == 0) {
      x+=stepsize;
    } else if (choice == 1) {
      x-=stepsize;
    } else if (choice == 2) {
      y+=stepsize;
    } else {
      y-=stepsize;
    }
    
    // Boundary Condition on x
    if (x > width){
      x -= width;
    } else if (x < 0) {
      x += width;
    }
    // Boundary Condition on y
    if (y > height){
      y -= height;
    }
    else if(y < 0){
      y += height;
    }
  } 
}



Walker w;

void setup() {
  size(500,500);
  w = new Walker();
  background(100);
}

void draw() {
  w.step();
  w.display();
}
