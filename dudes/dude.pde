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
    this.velocity = new PVector(random(-1, 1), random(-1, 1));
    this.relation = relation;
  }
  
  public void update() {
    
  }
}
