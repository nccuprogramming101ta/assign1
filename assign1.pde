/* please implement your assign1 code in this file. */
PImage backgroundImg1, backgroundImg2;
PImage fighter;
PImage hp;
PImage treasure;
PImage enemy;
int x,y;
int a,b;
int m,n;
int w;

void setup () {
  size(640,480) ;  // must use this size.
  backgroundImg1 = loadImage("img/bg2.png");
  backgroundImg2 = loadImage("img/bg1.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  x = 0;
  y = -640;
  a = 0;
  b = floor(random(390));
  m = floor(random(590));
  n = floor(random(390));
  w = floor(random(200));
  // your code
}

void draw() {
  //background
  if (x > width){
  x = -640;
  }
  if (y > width){
  y = -640;
  }
  image(backgroundImg1, x, 0);
  image(backgroundImg2, y, 0);
  x = (x+1);
  y = (y+1);
  
  //enemy
  image(enemy,a,b);
  a = a+3;
  a %=640;
  
  //treasure
  image(treasure,m,n);
  //fighter
  image(fighter,590,220);
  
  //HP
  fill(255,0,0);
  rect(8,8,w,15);
  image(hp,0,0);
}

