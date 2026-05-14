ArrayList<Hill> hills;

final int carrying_capacity = 100;

class Hill {
    float position;
    int radius = 0;
    boolean increasing = true;

    Hill(float position) {
        this.position = position;
    }



}


void setup() {
    size(800, 400);
    hills = new ArrayList();
}

void draw() {
    if (random(1) < 0.05 && hills.size() < carrying_capacity) {
        hills.add(new Hill(random(width)));
    }

    for (Hill hill : hills) {
        if (random(1) < 0.02) {
            hill.increasing = false;
        }
        if (hill.radius < 0) {
            hills.remove(hill);
            break;
        }

        hill.radius += hill.increasing ? 1 : -1;
        circle(hill.position, height, hill.radius);
    }
}

