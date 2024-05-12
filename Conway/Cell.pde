class Cell
{
  int xpos;
  int ypos;

  int state;
  int previousState;

  Cell()
  {
    state = (int)random(0, 100);
    previousState = state;
  }
}
