public class Cell extends Object{
  private int diameter;
  private int col;
  
  public Cell(PVector loc, PVector speed, int col, String url) {
    super(loc, speed, url);
    this.col = col;
    diameter = 70;
  }
  
  public boolean collides(float x, float y) {
    PVector point = new PVector(x, y);
    float dist = PVector.dist(getLoc(), point);
    
    return dist <= diameter/2;
  }
  
  void draw() {
    noStroke();
    fill(getColor());
    ellipse(getXLoc(), getYLoc(), diameter, diameter);

    image(getImg(), getXLoc()-35, getYLoc()-35, width/8, height/8);
    resizeImg(0, 70);
  }
  
  public void setGraphics(int col, String url) {
    this.col = col;
    setImg(loadImage(url, "png"));
  }
  
  public void setColor(int col) {
    this.col = col;
  }
  
  public int getColor() {
    return this.col;
  }
  
  public int getDiameter() {
    return diameter;
  }
}
