int screen_mode;
int start_screen= 0;
int manual_screen= 1;
int settings_screen= 2;
int aboutus_screen= 3;
int play_screen= 4;
int end_screen= 5;
int impact_screen= 6;

import ddf.minim.*;
Minim minim;
AudioPlayer bgm;

void setup(){
  size(700, 900);
  background_set();
  start_set();
  settings_set();
  block_set();
  prop_set();
  score_set();
  screen_mode= impact_screen;
  imageMode(CENTER);
  minim= new Minim (this);
  bgm= minim.loadFile ("BGM.wav");
  bgm.loop();
}

void reset(){
  background_set();
  start_set();
  settings_set();
  block_set();
  prop_set();
  score_set();
  screen_mode= start_screen;
}

void draw(){
  draw_background();
  if (screen_mode==impact_screen){
    // 初始
  }else if (screen_mode==start_screen){
    // 開始頁
    draw_start();
  }else if (screen_mode==manual_screen){
    // 說明頁
    draw_manual();
  }else if (screen_mode==settings_screen){
    draw_settings();
  }else if (screen_mode==aboutus_screen){
    draw_aboutus();
  }else if (screen_mode==play_screen){
    // 遊戲頁
    if (block_check()){
      //draw_background();
      draw_play();
      draw_prop();
      draw_score();
      //draw_play_UI();
    }
    if (block_draw_mode==0 && last_block_draw_mode==1){
      add_score();
      prop_drop();
      rand_prop();
    }
    last_block_draw_mode= block_draw_mode;
  }else if (screen_mode==end_screen){
    // 結算頁
    //draw_background();
    draw_end();
  }
}
