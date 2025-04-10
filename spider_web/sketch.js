function setup() {
  createCanvas(480, 480);
  background(200);

  strokeWeight(2);
  stroke(0);


}

function draw() {
  dynamic_branching(width / 2, height);
}

function dynamic_branching(x, y) {
  if (y- y/2 < 1) {  
    return;
  }
  line(x, y, x/2, y/2);
  line(x, y, 3/2*x, y/2);
  dynamic_branching(x/2, y/2);
  dynamic_branching(3/2*x, y/2); 
}

  