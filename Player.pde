class Player {
  IntList leftActionCharacters;
  IntList upActionCharacters;
  IntList rightActionCharacters;
  IntList downActionCharacters;
  int size;
  float x, y, vx, vy;
  float speed;
  boolean movingLeft, movingUp, movingRight, movingDown;
  float attackSpeed;
  int maxReloadTime;
  float currentReloadTime;
  float bulletSpeed;
  int maxHealth;
  int currentHealth;
  Player(float x, float y) {
    leftActionCharacters = new IntList();
    leftActionCharacters.append('a');
    leftActionCharacters.append('A');
    upActionCharacters = new IntList();
    upActionCharacters.append('w');
    upActionCharacters.append('W');
    downActionCharacters = new IntList();
    downActionCharacters.append('s');
    downActionCharacters.append('S');
    rightActionCharacters = new IntList();
    rightActionCharacters.append('d');
    rightActionCharacters.append('D');
    size = 25;
    this.x = x;
    this.y = y;
    speed = 5;
    attackSpeed = 0.5;
    maxReloadTime = 5;
    currentReloadTime = maxReloadTime;
    bulletSpeed = 2;
    maxHealth = 10;
    currentHealth = maxHealth;
  }

  void update() {
    if (movingUp && movingDown) {
      vy = 0;
    } else if (movingUp) {
      vy = -speed;
    } else if (movingDown) {
      vy = speed;
    } else {
      vy = 0;
    }

    if (movingLeft && movingRight) {
      vx = 0;
    } else if (movingLeft) {
      vx = -speed;
    } else if (movingRight) {
      vx = speed;
    } else {
      vx = 0;
    }

    x += vx;
    y += vy;

    currentReloadTime -= 1 * attackSpeed;
  }
  void render() {
    noStroke();
    fill(255, 0, 0);
    rect(x-50 + size, y+5, 100-size, 10);
    fill(0, 255, 0);
    rect(x-50 + size, y+5, map(currentHealth, 0, maxHealth, 0, 100)-size, 10);

    fill(255,0,0);
    triangle(x, y, x + size/2, y - size, x + size, y);
  }

  void keyPressed(char key) {
    if (player1.leftActionCharacters.hasValue(key)) {
      movingLeft = true;
    } else if (player1.upActionCharacters.hasValue(key)) {
      movingUp = true;
    } else if (player1.rightActionCharacters.hasValue(key)) {
      movingRight = true;
    } else if (player1.downActionCharacters.hasValue(key)) {
      movingDown = true;
    }
  }

  void keyReleased(char key) {
    if (player1.leftActionCharacters.hasValue(key)) {
      movingLeft = false;
    } else if (player1.upActionCharacters.hasValue(key)) {
      movingUp = false;
    } else if (player1.rightActionCharacters.hasValue(key)) {
      movingRight = false;
    } else if (player1.downActionCharacters.hasValue(key)) {
      movingDown = false;
    }
  }
}
