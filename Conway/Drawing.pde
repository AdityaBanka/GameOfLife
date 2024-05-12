void Drawing()
{
  if (mousePressed == true) 
  { 
    int lx = mouseX/size;
    int ly = mouseY/size;
    if (mouseButton == LEFT) 
    {
      fill(0, 255, 0);
      cell[lx][ly].state = 1;
      cell[lx][ly].previousState = 1;
      rect(cell[lx][ly].xpos, cell[lx][ly].ypos, size, size);
    } else 
    {
      fill(0);
      cell[lx][ly].state = 0;
      cell[lx][ly].previousState = 0;
      rect(cell[lx][ly].xpos, cell[lx][ly].ypos, size, size);
    }
  }
  if (keyPressed)
  {
    mode = 0;
  }
}
