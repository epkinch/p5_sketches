function setup() {
  createCanvas(480, 480);
  background(255);

  strokeWeight(2);
  stroke(0);
}

function draw() {
  print(height);
  for (var x = height; x > 0; x += 20) {
    line(0, width/2, x, width/2);
  }

  }
