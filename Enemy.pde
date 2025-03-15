class Enemy {
  float x, y;
  float vx, vy;
  int size;
  int maxHealth;
  int currentHealth;
  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    this.vy = 1;
    this.size = 25;
    this.maxHealth = 100;
    this.currentHealth = this.maxHealth;
  }

  void update() {
    x += vx;
    y += vy;
  }

  void render() {
    fill(255);
    ellipse(x, y, size, size);
  }
}
