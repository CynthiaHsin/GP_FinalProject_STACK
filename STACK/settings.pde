int gamemode_normal= 0;
int gamemode_coin= 1;
int gamemode= gamemode_normal;

//PImage settings_gamemode_page_img;
int settings_unit= 50;

int settings_gamemode_page_x;
int settings_gamemode_page_y;
int settings_gamemode_page_w;
int settings_gamemode_page_h;

int settings_gamemode_normal_lx;
int settings_gamemode_normal_rx;
int settings_gamemode_normal_ty;
int settings_gamemode_normal_by;

int settings_gamemode_coin_lx;
int settings_gamemode_coin_rx;
int settings_gamemode_coin_ty;
int settings_gamemode_coin_by;

int settings_gamemode_concern_lx;
int settings_gamemode_concern_rx;
int settings_gamemode_concern_ty;
int settings_gamemode_concern_by;

void settings_set(){
  //gamemode= gamemode_normal;
  //settings_gamemode_page_change();
  
  //settings_gamemode_page_x= width/2;
  //settings_gamemode_page_y= height/2;
  //settings_gamemode_page_w= width;
  //settings_gamemode_page_h= height;
  
  settings_gamemode_normal_lx= settings_unit* 3;
  settings_gamemode_normal_rx= settings_gamemode_normal_lx + settings_unit;
  settings_gamemode_normal_ty= settings_unit* 7;
  settings_gamemode_normal_by= settings_gamemode_normal_ty + settings_unit;
  
  settings_gamemode_coin_lx= settings_gamemode_normal_lx;
  settings_gamemode_coin_rx= settings_gamemode_coin_lx + settings_unit;
  settings_gamemode_coin_ty= settings_unit* 9;
  settings_gamemode_coin_by= settings_gamemode_coin_ty + settings_unit;
  
  settings_gamemode_concern_lx= settings_unit* 6;
  settings_gamemode_concern_rx= settings_gamemode_concern_lx + settings_unit*2;
  settings_gamemode_concern_ty= settings_unit* 12;
  settings_gamemode_concern_by= settings_gamemode_concern_ty + settings_unit;
}

void draw_settings(){
  //image (settings_gamemode_page_img, settings_gamemode_page_x, settings_gamemode_page_y, settings_gamemode_page_w, settings_gamemode_page_h);
}

void settings_gamemode_page_change(){
  if (gamemode == gamemode_normal) background_img = loadImage("settings_game_mode_normal.png");
  else if (gamemode == gamemode_coin) background_img = loadImage("settings_game_mode_coin.png");
}

void settings_mouseclick (int x, int y){
//println (0);
//println (settings_gamemode_normal_lx);
//println(x);
//println (settings_gamemode_normal_rx);
//println (settings_gamemode_normal_ty);
//println(y);
//println (settings_gamemode_normal_by);
  if (is_in_area (x, y, settings_gamemode_normal_lx, settings_gamemode_normal_rx, settings_gamemode_normal_ty, settings_gamemode_normal_by)){
    gamemode= gamemode_normal;
    settings_gamemode_page_change();
  }else if (is_in_area (x, y, settings_gamemode_coin_lx, settings_gamemode_coin_rx, settings_gamemode_coin_ty, settings_gamemode_coin_by)){
    gamemode= gamemode_coin;
    settings_gamemode_page_change();
  }else if (is_in_area (x, y, settings_gamemode_concern_lx, settings_gamemode_concern_rx, settings_gamemode_concern_ty, settings_gamemode_concern_by)){
    prop_set();
    screen_mode= start_screen;
  }
}
