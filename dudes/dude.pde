public class Dude {
  float x;
  float y;
  float size;
  color col;
  float xVel; //velocity
  float yVel;
  boolean relation;
  
  public Dude(float x, float y, float size, color col, float xVel, float yVel, boolean relation) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.col = col;
    this.xVel = random(-1, 1);
    this.yVel = random(-1, 1);
    this.relation = relation;
  }
}
