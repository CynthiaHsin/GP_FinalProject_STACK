void mouseClicked(){
  int x= mouseX;
  int y= mouseY;
  if (screen_mode==impact_screen){
    impact_mouseclick();
  }else if (screen_mode==start_screen){
    start_mouseclick (x, y);
  }else if (screen_mode==manual_screen){
    manual_mouseclick (x, y);
  }else if (screen_mode==settings_screen){
    settings_mouseclick (x, y);
  }else if (screen_mode==aboutus_screen){
    aboutus_mouseclick (x, y);
  }else if (screen_mode==play_screen){
    play_mouseclick (x, y);
  }else if (screen_mode==end_screen){
    end_mouseclick (x, y);
  }
}
