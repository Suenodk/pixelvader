class Bullet {
  int size = 5;
  float x, y, vx, vy;
  float speed;
  Bullet(float x, float y, float vy) {
    this.x = x;
    this.y = y;
    // Bullet is moving up
    this.vy = -1 * vy;
  }

  void update()  {    
    x += vx;
    y += vy;
  }
  void render() {
    fill(255);
    ellipse(x, y, size, size);
  }
}
