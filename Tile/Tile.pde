size(500,500); 

colorMode(RGB, 100);
background(100,100,100);
rectMode(CENTER);
int N = 25;
int B = width/N;
float R = B*0.75;

for(int y = 0; y < N; y++){
  for(int x = 0; x < N; x++){
    fill(100/N*x+10, 100/N*y+10, 75);
    strokeJoin(BEVEL); strokeWeight(5);
    rect(B/2+B*x, B/2+B*y, R, R);
  }
}
