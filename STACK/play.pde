PImage play_background_img;
int play_background_x;

void draw_play(){
    if (block_draw_mode==0){
      draw_block();
    }else if (block_draw_mode==1){
      draw_block_drop();
    }
}

void play_mouseclick (int x, int y){
  if (block_draw_mode==1) return;
  block_draw_mode= 1;
}
