Player player1;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
int gameTimer = 0;

void setup() {
  fullScreen();
  player1 = new Player(width / 2 - 50, height - 100);
}

void draw() {
  background(0);

gameTimer ++;
  player1.update();
  player1.render();
  
    if (player1.currentReloadTime <= 0) {
    player1.currentReloadTime = player1.maxReloadTime;
    bullets.add(new Bullet(player1.x + player1.size/2, player1.y - player1.size/2, player1.bulletSpeed));
  }
  
  for(int i = bullets.size()-1; i >= 0; i--) {
    bullets.get(i).update();
    bullets.get(i).render();
  }
  
  for(int i = enemies.size()-1; i >= 0; i--) {
    enemies.get(i).update();
    enemies.get(i).render();
  }
  
  if(gameTimer % 1000 == 0) {
    enemies.add(new Enemy(random(50, width-50), -50)); 
  }
}

void keyPressed() {
  player1.keyPressed(key);
}

void keyReleased() {
  player1.keyReleased(key);
}
