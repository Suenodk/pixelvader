class Enemy {
  float x, y;
  float vx, vy;
  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    this.vy = 1;
  }
  
  void update() {
    x += vx;
    y += vy;
  }
  
  void render() {
    fill(255);
    rect(x, y, 100, 50);
  }
}
