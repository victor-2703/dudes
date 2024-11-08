Dude dude1;
Dude dude2;

void setup() {
  size(800, 600);
  dude1 = new Dude(200, 300, 50, color(255, 0, 0), true);
  dude2 = new Dude(600, 300, 50, color(0, 0, 255), false);
}

void draw() {
  background(200);
  
  dude1.update();
  dude2.update(new PVector(dude1.x, dude1.y));
  
  dude1.show();
  dude2.show();
}
