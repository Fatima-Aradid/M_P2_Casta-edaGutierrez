Bola[] ball;
Bola golpeador;
 
int nmballs= 15;

void setup(){
  
  size(500,500);
  ball = new Bola[nmballs];
  golpeador = new Bola();
  for(int i=0; i<nmballs; i++)
  ball[i] = new Bola();
  
}

void draw(){

  background(51,129,121);
  
  fill(255,0,0);
  golpeador.mover();
  
  fill(255,124,62);
  
  for(int i=0; i<nmballs; i++)
    ball[i].mover();
  
  for(int i=0; i<nmballs; i++)
    for(int j= i+1; j<nmballs; j++)
      colision(ball[i],ball[j]);
}

void colision( Bola ball1, Bola ball2){

  if(dist(ball1.x, ball1.y, ball2.x , ball2.y) < (ball1.d))
  { 
    ball1.spx*=-1;
    ball1.spy*=-1;
    ball2.spx*=-1;
    ball2.spy*=-1;
}

if(dist(golpeador.x, golpeador.y , ball1.x, ball1.y) < (ball1.d + golpeador.d))

  {
    ball1.spx *= -1;
    ball1.spy *= -1;
    golpeador.spx *= -1;
    golpeador.spy*= -1;
    
  }
  
/*  if(dist(golpeador.x, golpeador.y , ball2.x, ball2.y) < (golpeador.d))

  {
    ball2.spx *= -1;
    ball2.spy *= -1;
    golpeador.spx *= -1;
    golpeador.spy*= -1;
    
  }
  */
 
}
 void mouseDragged(){

  if(dist(mouseX,mouseY,golpeador.x, golpeador.y)< (golpeador.d)){
  
    golpeador.friccion= 0.5;
    golpeador.spx= mouseX-pmouseX;
    golpeador.spy= mouseY-pmouseY;
  } 
 }
