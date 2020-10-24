void SIR(float dt, float[] S, float[] I, float[] R) {
  int N = S.length;
  for (int i=0; i<N; i++) {
    float b = contactRate(i);
    float k = removedRate(i);
    
    S[i] += -b*S[i]*I[i]*dt;
    R[i] += k*I[i]*dt;
    I[i] = 1-S[i]-R[i];
  }
}


void SIRS(float dt, float[] S, float[] I, float[] R) {
  int N = S.length;
  for (int i=0; i<N; i++) {
    float b = contactRate(i);
    float k = removedRate(i);
    float l = susceptibleRate(i);
    
    S[i] += -b*S[i]*I[i]*dt + l*R[i]*dt;
    R[i] += k*I[i]*dt - l*R[i]*dt;
    I[i] = 1-S[i]-R[i];
  }
}
