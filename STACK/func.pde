boolean is_in_area (int x, int y, int lx, int rx, int ty, int by){
  boolean re= true;
  if (x<lx) re= false;
  if (x>rx) re= false;
  if (y<ty) re= false;
  if (y>by) re= false;
  return re;
}

void calculate_block_area(int x, int y){
  block_area_lx= x - block_w/2;
  block_area_rx= x + block_w/2;
  block_area_ty= y - block_h/2;
  block_area_by= y + block_h/2;
}
