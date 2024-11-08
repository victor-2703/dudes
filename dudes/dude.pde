class Dude {
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

  public void update(PVector affinity) {
    float xDirection = affinity.x - x;
    float yDirection = affinity.y - y;
    if (!relation) {
      xDirection = -xDirection;
      yDirection = -yDirection;
    }

    float magnitude = (float) Math.sqrt(Math.pow(xDirection, 2) + Math.pow(yDirection, 2));
    if (magnitude != 0) {
      xDirection = (xDirection / magnitude);
      yDirection = (yDirection / magnitude);
    }

    PVector direction = new PVector(xDirection, yDirection);
    velocity.add(direction);

    float speed = (float) Math.sqrt(velocity.magSq());
    if (speed > 2) {
      velocity.normalize();
      velocity.mult(2);
    }
    
    x += velocity.mag() * cos(atan2(velocity.y, velocity.x));
    y += velocity.mag() * sin(atan2(velocity.y, velocity.x));
    
    if (x < size / 2 || x > width - size / 2) {
      velocity.set(-velocity.x, velocity.y);
    }
    if (y < size / 2 || y > height - size / 2) {
      velocity.set(velocity.x, -velocity.y);
    }
  }
  
  public void show() {
    fill(col);
    circle(x, y, size);
  }
}
