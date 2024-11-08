public class Dude {
  float x;
  float y;
  float size;
  color col;
  PVector velocity;
  boolean relation;
  
  public Dude(float x, float y, float size, color col, boolean relation) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.col = col;
    this.velocity = PVector.random2D();
    this.relation = relation;
  }
  
  
  public void update() {
    x += velocity.x;
    y += velocity.y;

    if (x < size / 2 || x > width - size / 2) {
      velocity.set(-velocity.x, velocity.y);
    }
    if (y < size / 2 || y > height - size / 2) {
      velocity.set(velocity.x, -velocity.y);
    }
  }
  
  void show() {
    fill(col);
    circle(x, y, size);
  }
}
