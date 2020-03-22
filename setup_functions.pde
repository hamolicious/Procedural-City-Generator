
void makeCam() {
  cam = new QueasyCam(this);
  cam.sensitivity = 0.5;
}

String[] blocks = {
  "buildings/house1.obj", 
  "buildings/house2.obj", 
  "buildings/house3.obj"
};
float[] rots = {
  0,
  HALF_PI, 
  PI, 
  -HALF_PI, 
  -PI
};
void makeWorld() {
  float noiseX = 0;
  float noiseY = 0;

  world = new Block[worldWidth * worldHeight];
  for (int z = 0; z < worldHeight; z++) {
    for (int x = 0; x < worldWidth; x++) {
      PShape body = loadShape(blocks[int(random(0, blocks.length))]);
      body.scale(houseScale, houseScale * (noise(noiseX, noiseY) + 1), houseScale);
      body.rotateX(PI);
      body.rotateY(rots[int(random(0, rots.length))]);

      noiseX += 0.1;      

      world[z*worldWidth+x] = new Block(body, x * xOff, z * zOff);
    }
    noiseY += 0.1;
  }
}
