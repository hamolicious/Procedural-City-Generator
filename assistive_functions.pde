
void addLights() {
  background(0);

  ambientLight(0, 0, 0);
  spotLight(255, 255, 255, cam.position.x, cam.position.y, cam.position.z, cam.getForward().x, cam.getForward().y, cam.getForward().z, PI, 1);
}

void record() {
  cam.position.x += cam.getForward().x*speed;
  cam.position.z += cam.getForward().z*speed;

  saveFrame("Frames/image-####.png");
  frames--;

  if (frames <= 0)
    exit();
}
