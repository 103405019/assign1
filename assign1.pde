/* please implement your assign1 code in this file. */
PImage bg1, bg2, enemy, fighter, hp, treasure;
int bg, en, hps, trX, trY;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  hp=loadImage("img/hp.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  treasure=loadImage("img/treasure.png");
  
  bg=0;
  en=0;
  hps=floor(random(0,204)); 
  trX=floor(random(0,600));
  trY=floor(random(45,440));
}

void draw() {
// your code
 //background
  bg++;
  bg%=1282;
  image(bg1,bg,0);
  image(bg2,bg-641,0);
  image(bg1,bg-1282,0);

 //treasure
  image(treasure, trX, trY);
  
 //enemy
  en+=3;
  en%=640;
  image(enemy, en, 100);
  
 //fighter
  image(fighter, 570, 214);
  
 //hp
  fill(255,0,0);
  noStroke();
  rect(22, 15, hps, 30);
  image(hp, 15, 15);
}
