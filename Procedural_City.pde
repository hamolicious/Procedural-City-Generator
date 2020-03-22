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
  addLights();

  for (Block b : world) {
    b.show();
  }

  if (rec)
    record();
}
