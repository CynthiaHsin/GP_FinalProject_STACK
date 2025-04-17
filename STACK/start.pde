int botton_space= 20;

PImage  start_botton_img;
int start_botton_w= 280;
int start_botton_h= 280;
int start_botton_x;
int start_botton_y;
int start_botton_lx;
int start_botton_rx;
int start_botton_ty;
int start_botton_by;

PImage  manual_botton_img;
int manual_botton_w= 80;
int manual_botton_h= 80;
int manual_botton_x;
int manual_botton_y;
int manual_botton_lx;
int manual_botton_rx;
int manual_botton_ty;
int manual_botton_by;

PImage  settings_botton_img;
int settings_botton_w= 80;
int settings_botton_h= 80;
int settings_botton_x;
int settings_botton_y;
int settings_botton_lx;
int settings_botton_rx;
int settings_botton_ty;
int settings_botton_by;

PImage  aboutus_botton_img;
int aboutus_botton_w= 80;
int aboutus_botton_h= 80;
int aboutus_botton_x;
int aboutus_botton_y;
int aboutus_botton_lx;
int aboutus_botton_rx;
int aboutus_botton_ty;
int aboutus_botton_by;

void start_set(){
  start_botton_x= width/2;
  start_botton_y= height/2;
  start_botton_img= loadImage("start_play_botton.png");
  start_botton_lx= start_botton_x - start_botton_w/2;
  start_botton_rx= start_botton_x + start_botton_w/2;
  start_botton_ty= start_botton_y - start_botton_h/2;
  start_botton_by= start_botton_y + start_botton_h/2;
  
  manual_botton_x= start_botton_x - start_botton_w/2 + manual_botton_w/2;
  manual_botton_y= start_botton_y + botton_space + start_botton_h/2 + manual_botton_h/2;
  manual_botton_img= loadImage("start_manual_botton.png");
  manual_botton_lx= manual_botton_x - manual_botton_w/2;
  manual_botton_rx= manual_botton_x + manual_botton_w/2;
  manual_botton_ty= manual_botton_y - manual_botton_h/2;
  manual_botton_by= manual_botton_y + manual_botton_h/2;
  
  settings_botton_x= manual_botton_x + manual_botton_w/2 + settings_botton_w/2 + botton_space;
  settings_botton_y= manual_botton_y;
  settings_botton_img= loadImage("start_settings_botton.png");
  settings_botton_lx= settings_botton_x - settings_botton_w/2;
  settings_botton_rx= settings_botton_x + settings_botton_w/2;
  settings_botton_ty= settings_botton_y - settings_botton_h/2;
  settings_botton_by= settings_botton_y + settings_botton_h/2;
  
  aboutus_botton_x= settings_botton_x + settings_botton_w/2 + aboutus_botton_w/2 + botton_space;
  aboutus_botton_y= settings_botton_y;
  aboutus_botton_img= loadImage("start_aboutus_botton.png");
  aboutus_botton_lx= aboutus_botton_x - aboutus_botton_w/2;
  aboutus_botton_rx= aboutus_botton_x + aboutus_botton_w/2;
  aboutus_botton_ty= aboutus_botton_y - aboutus_botton_h/2;
  aboutus_botton_by= aboutus_botton_y + aboutus_botton_h/2;
}

void draw_start(){
  imageMode(CENTER);
  image (start_botton_img, start_botton_x, start_botton_y, start_botton_w, start_botton_h);
  image (manual_botton_img, manual_botton_x, manual_botton_y, manual_botton_w, manual_botton_h);
  image (settings_botton_img, settings_botton_x, settings_botton_y, settings_botton_w, settings_botton_h);
  image (aboutus_botton_img, aboutus_botton_x, aboutus_botton_y, aboutus_botton_w, aboutus_botton_h);
}

void start_mouseclick (int x, int y){
  if (is_in_area (x, y, start_botton_lx, start_botton_rx, start_botton_ty, start_botton_by)){
    screen_mode= play_screen;
  }else if (is_in_area (x, y, manual_botton_lx, manual_botton_rx, manual_botton_ty, manual_botton_by)){
    screen_mode= manual_screen;
  }else if (is_in_area (x, y, settings_botton_lx, settings_botton_rx, settings_botton_ty, settings_botton_by)){
    screen_mode= settings_screen;
  }else if (is_in_area (x, y, aboutus_botton_lx, aboutus_botton_rx, aboutus_botton_ty, aboutus_botton_by)){
    screen_mode= aboutus_screen;
  }
}
