public class Object {
  private PVector loc;
  private PVector speed;
  private PImage img;
  
  public Object (PVector loc, PVector speed, String url){
    this.loc = loc;
    this.speed = speed;
    this.img = loadImage(url, "png");
  }
  
  public float getXLoc() {
    return loc.x;
  }
  
  public float getYLoc() {
    return loc.y;
  }
  
  public PVector getLoc() {
    return loc;
  }
  
  public PVector getSpeed() {
    return speed;
  }
  
  public void setLoc(float x, float y) {
    loc = new PVector(x, y);
  }
  
  public void setLoc(PVector loc) {
    this.loc = loc;
  }
  
  public void setSpeed(PVector speed) {
    this.speed = speed;
  }
  
  public void move() {
    this.loc.y += speed.y;
  }
  
  public PImage getImg() {
    return this.img;
  }
  
  public void setImg(PImage img) {
    this.img = img; 
  }
  
  public void resizeImg(int x, int y) {
    img.resize(x, y); 
  }
}
