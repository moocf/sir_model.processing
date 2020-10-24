// Plot variable history till time T.
// H: variable history
// T: end time
// n: variable name
void plotHist(float[][] H, int T, String n) {
  int N = H.length;
  int h = n.hashCode() % 360;
  int s = n.hashCode() % 255;
  colorMode(HSB);
  for (int i=0; i<N; i++)
    plotLine(H[i], T, color(h, s, 200), n+" "+i);
}


// Plot points till time T.
// Y: points in 0-1
// T: end time
// c: line color
// n: line name
void plotLine(float[] Y, int T, color c, String n) {
  float x = 0, y = 0;
  fill(c);
  for (int i=0; i<T; i++, x++)
    square(x, y=height-Y[i]*height, 4);
  text(n, x, y);
}
