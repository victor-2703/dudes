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
  
  public void update() {
    
  }
}
