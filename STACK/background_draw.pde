PImage background_img;
int background;
int background_x;
int background_y;
int background_w;
int background_h;

void background_set(){
  background= 0;
  background_change();
  background_x= width/2;
  background_y= height/2;
  background_w= width;
  background_h= height;
}

void draw_background(){
  //if (screen_mode);
  //background(background_img);
  if (background!=screen_mode) background_change();
  image (background_img, background_x, background_y, background_w, background_h);
}

void background_change(){
  if (screen_mode==impact_screen){
    background= impact_screen;
    background_img= loadImage("impact_background.png");
  }else if (screen_mode==start_screen){
    background= start_screen;
    background_img= loadImage("start_background.png");
  }else if (screen_mode==manual_screen){
    background= manual_screen;
    background_img= loadImage("manual_background.png");
  }else if (screen_mode==settings_screen){
    background= settings_screen;
    settings_gamemode_page_change();
  }else if (screen_mode==aboutus_screen){
    background= aboutus_screen;
    background_img= loadImage("aboutus_background.png");
  }else if (screen_mode==play_screen){
    background= play_screen;
    background_img= loadImage("play_backgroung.png");
  }else if (screen_mode==end_screen){
    background= end_screen;
    background_img= loadImage("end_background.png");
  }
}
