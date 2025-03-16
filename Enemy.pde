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
    noStroke();
    fill(255, 0, 0);
    rect(x-50-size/2 + size, y+size/2 + 5, 100, 10);
    fill(0, 255, 0);
    rect(x-50 - size/2 + size, y+size/2+5, map(currentHealth, 0, maxHealth, 0, 100), 10);

    fill(255);
    ellipse(x, y, size, size);
  }
}
