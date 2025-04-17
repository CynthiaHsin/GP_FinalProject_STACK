int end_playagain_botton_lx= 240;
int end_playagain_botton_rx= 460;
int end_playagain_botton_ty= 580;
int end_playagain_botton_by= 640;

void draw_end(){
  //image (start_botton_img, start_botton_x, start_botton_y, start_botton_w, start_botton_h);
  draw_score();
}

void end_mouseclick (int x, int y){
  if (x>=end_playagain_botton_lx && x<=end_playagain_botton_rx && y>=end_playagain_botton_ty && y<=end_playagain_botton_by){
    reset();
  }
}
