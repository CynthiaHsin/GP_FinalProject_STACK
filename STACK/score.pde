int score;
int score_10;

float score_w;
float score_x;
int score_y;
float score_x_setting;
int score_y_setting;
int end_score_y_setting;

PFont score_text;
int score_text_size= 40;

void score_set(){
  score= 0;
  score_10= 10;
  score_x_setting= 360;
  score_y_setting= 110;
  end_score_y_setting= 430;
  score_text = createFont("NotoSerifHK-VariableFont_wght.ttf", score_text_size);
}

void draw_score(){

  textMode(CENTER);
  textFont(score_text);
  textSize(score_text_size);
  String s= str(score);
  score_w= textWidth(s);
  score_x= score_x_setting - score_w/2;
  if (screen_mode==play_screen) score_y= score_y_setting + score_text_size/2;
  else if (screen_mode==end_screen) score_y= end_score_y_setting + score_text_size/2;
  //if (gamemode == gamemode_normal) text(score, score_x, score_y);
  //else if (gamemode == gamemode_coin) text(score+prop_cnt, score_x, score_y);
  //image (prop_img, score_x, score_y, 10, 10);
  text(score, score_x, score_y);
}
void add_score(){
  score++;
  if (prop_left>0){
    score++;
    prop_left--;
  }
  while (score>=score_10){
    score_10+= 10;
    block_color++;
    block_color%= block_color_num;
    block_change();
  }
}
