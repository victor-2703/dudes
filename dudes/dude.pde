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

  
  public void update(PVector target) {
    PVector velocity2 = new PVector((target.x - x) / 100, (target.y - y) / 100);
    
    x += velocity2.x;
    y += velocity2.y;
    
    if (x < size / 2 || x > width - size / 2) {
      velocity.set(-velocity2.x, velocity2.y);
    }
    if (y < size / 2 || y > height - size / 2) {
      velocity.set(velocity2.x, -velocity2.y);
    }
  }
  
  void show() {
    fill(col);
    circle(x, y, size);
  }
}
