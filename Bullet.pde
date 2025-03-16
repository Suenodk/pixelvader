class Bullet {
  int size = 5;
  PVector location;
  PVector velocity;
  float speed = -5;
  Bullet(float x, float y, float vy, float angle) {
    location = new PVector(x, y);
    velocity = new PVector(0, vy * speed);
    velocity.rotate(angle * PI / 180);
  }

  void update() {
    location.add(velocity);
  }

  void render() {
    fill(255);
    ellipse(location.x, location.y, size, size);
  }
}
