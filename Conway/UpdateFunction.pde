void update(int i, int j, Cell cell[][])
{
  int ul=0, uc=0, ur=0, l=0, r=0, dl=0, dc=0, dr=0;

  if (i-1>=0 && j-1>=0)
    ul = cell[i-1][j-1].previousState;

  if (j-1>=0)
    uc = cell[i][j-1].previousState;

  if (i+1<1920/size && j-1>=0)
    ur = cell[i+1][j-1].previousState;

  if (i-1>=0)
    l = cell[i-1][j].previousState;

  if (i+1<1920/size)
    r = cell[i+1][j].state;

  if (i-1>=0 && j+1<1080/size)
    dl = cell[i-1][j+1].state;

  if (j+1<1080/size)
    dc = cell[i][j+1].state;

  if (i+1<1920/size && j+1<1080/size)
    dr = cell[i+1][j+1].state;

  int sum = (ul + uc + ur) + (l + r) + (dl + dc + dr);



  if (cell[i][j].state == 1)
  {
    if (sum<2 || sum>3)
      cell[i][j].state = 0;
  }
  if (cell[i][j].state == 0)
  {
    if (sum == 3)
      cell[i][j].state = 1;
  }
}
