int mode = 1;
int size = 10;
int chance = 7;

int x = 1920/size;
int y = 1080/size;

Cell cell[][] = new Cell [x][y];

void setup()
{
  fullScreen();
  background(0);
  fill(0, 255, 0);
  noStroke();
  for (int i = 0; i<x; i++)
  {
    for (int j = 0; j<y; j++)
    {
      cell[i][j] = new Cell();

      cell[i][j].xpos = i*size;
      cell[i][j].ypos = j*size;

      if (cell[i][j].state < chance)
      {
        cell[i][j].state = 1;
        cell[i][j].previousState = 1;
        rect(cell[i][j].xpos, cell[i][j].ypos, size, size);
      } else
      {
        cell[i][j].state = 0;
        cell[i][j].previousState = 0;
      }
    }
  }
}

void draw()
{
  if (mode == 0)
  {
    Normal();
    //delay(63);
  } else if (mode == 1)
  {
    Drawing();
  }
}
