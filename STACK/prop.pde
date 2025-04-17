PImage prop_img;
int prop_w;
int prop_h;
int prop_x;
int prop_y;
int prop_y_setting;
int prop_limit_lx;
int prop_limit_rx;
int prop_exist;
int prop_add;
int prop_left;
int prop_cnt;
double prop_probability;

void prop_set(){
  prop_w= block_h;
  prop_h= block_h;
  prop_x= 0;
  prop_y_setting= top_block_y_setting + block_h + block_space;
  prop_y= prop_y_setting;
  
  prop_limit_lx= prop_w/2;
  prop_limit_rx= width - prop_w/2;
  prop_img= loadImage("prop.png");
  
  prop_exist= 0;
  prop_cnt= 0;
  if (gamemode == gamemode_normal) prop_probability = 0;
  else if (gamemode == gamemode_coin) prop_probability= 0.3;
  prop_add= 1;
  prop_left= 0;
}

void draw_prop(){
  if (prop_exist==1){
    if (prop_y>=height){
      prop_exist=0;
      prop_y= prop_y_setting;
    }else{
      if (check_prop_touch()){
        prop_exist=0;
        prop_left+= prop_add;
        prop_cnt++;
        prop_y= prop_y_setting;
      }else{
        image (prop_img, prop_x, prop_y, prop_w, prop_h);
      }
    }
  }
}

void rand_prop(){
  if (prop_exist==0){
    double r= random(0.0, 1.0);
    if (r<=prop_probability){
      prop_exist= 1;
      prop_x= int(random(prop_limit_lx, prop_limit_rx));
    }
  }
}

boolean check_prop_touch(){
  boolean re= false;
  int lx= prop_x - prop_w/2;
  int rx= prop_x + prop_w/2;
  int ty= prop_y - prop_h/2;
  int by= prop_y + prop_h/2;
  calculate_block_area (top_block_x, top_block_y);
  if (is_in_area(lx, ty, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
  if (is_in_area(lx, by, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
  if (is_in_area(rx, ty, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
  if (is_in_area(rx, by, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
  for (int i=0; i<bottom_block_num-1; i++){
    calculate_block_area (bottom_block_x[i], bottom_block_y[i]);
    if (is_in_area(lx, ty, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
    if (is_in_area(lx, by, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
    if (is_in_area(rx, ty, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
    if (is_in_area(rx, by, block_area_lx, block_area_rx, block_area_ty, block_area_by)) re= true;
  }
  return re;
}

void prop_drop(){
  if (prop_exist==1) prop_y+= (prop_h + block_space);
}
