float[] S = {0.8};
float[] I = {0.1};
float[] R = {0.1};
float[][] Sh, Ih, Rh;

int t = 0;
float dt = 0.01;
int N = S.length;
int T = 10000;

void setup() {
  size(1300, 700);
  background(0);
  noStroke();
  fill(102);
  
  Sh = histSetup(N, T);
  Ih = histSetup(N, T);
  Rh = histSetup(N, T);
}


void draw() {
  background(0);
  if (t>=10000) return;
  SIRS(dt, S, I, R);
  histCopy(Sh, S, t);
  histCopy(Ih, I, t);
  histCopy(Rh, R, t);
  t++;
  
  plotHist(Sh, t, "Susceptible");
  plotHist(Ih, t, "Infected");
  plotHist(Rh, t, "Removed");
}
