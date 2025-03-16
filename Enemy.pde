class Enemy {
  float x, y;
  float vx, vy;
  int size;
  int maxHealth;
  int currentHealth;
  
  // Constructor van de enemy (wordt aangeroepen wanneer er een nieuwe enemy wordt aangemaakt)
  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    this.vy = 1;
    this.size = 25;
    this.maxHealth = 10;
    this.currentHealth = this.maxHealth;
  }

 // Deze methode wordt elke render aangeroepen en hier kan je de logica van de enemy plaatsen
  void update() {
    x += vx;
    y += vy;
  }
  
  // Deze methode wordt elke render aangeroepen en hier wordt de enemy getekend
  void render() {
    noStroke();
    fill(255, 0, 0);
    rect(x-50, y+size/2 + 5, 100, 10);
    fill(0, 255, 0);
    rect(x-50, y+size/2+5, map(currentHealth, 0, maxHealth, 0, 100), 10);

    fill(255);
    ellipse(x, y, size, size);
  }
}
