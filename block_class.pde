
class Block {

  PShape body;
  PVector pos;

  Block(PShape body_model, float x, float y) {
    pos = new PVector(x, y);
    body = body_model;
  }

  void show() {
    pushMatrix();
    translate(pos.x, 0, pos.y);
    shape(body);
    popMatrix();
  }
}
