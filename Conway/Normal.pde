void Normal()
{
  background(0);

  for (int j = 0; j<y; j++)
  {
    for (int i = 0; i<x; i++)
    {
      update(i, j, cell);
    }
  }

  for (int i = 0; i<x; i++)
  {
    for (int j = 0; j<y; j++)
    {
      cell[i][j].previousState = cell[i][j].state;
    }
  }

  fill(0, 255, 0);
  noStroke();
  for (int i = 0; i<x; i++)
  {
    for (int j = 0; j<y; j++)
    {
      if (cell[i][j].state == 1 )
        rect(cell[i][j].xpos, cell[i][j].ypos, size, size);
    }
  }
}
