public class Obstacle extends Object {
  private int l;
  private int w;
  
  public Obstacle (PVector loc, PVector speed) {
    super(loc, speed, "https://smart.servier.com/wp-content/uploads/2016/10/CelluleC_5.png");
    l = 20;
    w = 50;
  }
  
  public boolean collides(float x, float y) {
    PVector point = new PVector(x, y);
    float dist = PVector.dist(getLoc(), point);
    
    return dist <= (l+w)/2;
  }
  
  void draw() {
    float locX = getXLoc();
    float locY = getYLoc();
    
    noStroke();
    fill(0);
    rect(locX, locY, l, w);
    
    image(getImg(), locX-15, locY-20, width/8, height/8);
  }
  
  public int getLength() {
    return l;
  }
  
  public int getWidth() {
    return w;
  }
}
