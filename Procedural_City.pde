import queasycam.*;

QueasyCam cam;

int worldWidth = 10;
int worldHeight = 10;
Block[] world;

float houseScale = 200;
float xOff = houseScale + 200;
float zOff = houseScale + 200;

boolean rec = false;
float speed = 5;
int frames = 1000;

void setup() {
  fullScreen(P3D);
  noCursor();

  lights();

  makeCam();
  makeWorld();
}

void draw() {
  perspective(PI/3.0, width/height, 0.1, 5000);
  addLights();

  for (Block b : world) {
    b.show();
  }

  if (rec)
    record();
}
