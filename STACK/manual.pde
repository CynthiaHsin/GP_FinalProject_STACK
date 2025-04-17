int manual_concern_lx= 300;
int manual_concern_rx= 400;
int manual_concern_ty= 620;
int manual_concern_by= 680;

void draw_manual(){
  
}

void manual_mouseclick (int x, int y){
  if (is_in_area(x, y, manual_concern_lx, manual_concern_rx, manual_concern_ty, manual_concern_by)){
    screen_mode= start_screen;
  }
}
