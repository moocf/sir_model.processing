// Set up history for a variable.
// N: no. of groups
// T: history length
float[][] histSetup(int N, int T) {
  float[][] A = new float[N][];
  for (int i=0; i<N; i++)
    A[i] = new float[T];
  return A;
}


// Copies history for a variable.
// H: history
// V: variable
// t: time
void histCopy(float[][] H, float [] V, int t) {
  int N = V.length;
  for (int i=0; i<N; i++)
    H[i][t] = V[i];
}
