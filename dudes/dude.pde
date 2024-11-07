class Dude {
  float x;
  float y;
  float size;
  color col;
  PVector velocity;
  boolean relation;
  
  public Dude(float x, float y, float size, color col, PVector velocity, boolean relation) {
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
  }
}
