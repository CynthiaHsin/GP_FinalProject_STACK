int aboutus_return_botton_lx= 300;
int aboutus_return_botton_rx= 400;
int aboutus_return_botton_ty= 620;
int aboutus_return_botton_by= 680;

void draw_aboutus(){
  
}

void aboutus_mouseclick (int x, int y){
  if (is_in_area(x, y, aboutus_return_botton_lx, aboutus_return_botton_rx, aboutus_return_botton_ty, aboutus_return_botton_by)){
    screen_mode= start_screen;
  }
}
