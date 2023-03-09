/**
 * Superformula by Alexander Miller. https://www.youtube.com/watch?v=u6arTXBDYhQ&ab_channel=AlexanderMiller
 * 
 */
 
 float t = 0;
 
void setup() {
  size(500, 500); 
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw() {
  background(0); 
  translate(width / 2, height / 2);
  beginShape();
  for (float theta = 0; theta <= 2 * PI; theta += 0.01) {
    float rad = r(theta,
    mouseX / 100.0, //a
    2, //b
    9, //m
    1, //n1
    sin(t), //n2
    cos(t)  //n3
    );
    
    float x = rad * cos(theta) * 50;
    float y = rad * sin(theta) * 50;
    vertex(x,y);
  }
  endShape();
  t += 0.1;
}      

float r(float theta, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
  pow(abs(sin(m * theta / 4.0) / b), n3), -1.0 / n1);
}
