int block_draw_mode= 0;
int last_block_draw_mode= 0;

int block_w= 240;
int block_h= 80;
int block_space= 20;

int top_block_move= 10;
int top_block_x;
int top_block_y;
int top_block_y_setting= 200 + block_h/2;
int top_block_x_limitL;
int top_block_x_limitR;

int bottom_block_num= 3;
int[] bottom_block_x= new int[bottom_block_num];
int[] bottom_block_y= new int[bottom_block_num];

int block_color;
int block_color_num= 5;
PImage block_img;

int block_drop_speed= 10;

int block_area_lx= 0;
int block_area_rx= 0;
int block_area_ty= 0;
int block_area_by= 0;

void block_set(){
  block_color= 0;
  block_change();
  int y= height;
  
  top_block_x_limitL= block_w/2;
  top_block_x_limitR= width-(block_w/2);
  top_block_x= width/2;
  top_block_y= top_block_y_setting;
  
  for (int i=0; i<bottom_block_num; i++){
    bottom_block_x[i]= width/2;
    y-= (block_space + block_h/2);
    bottom_block_y[i]= y;
    y-= (block_h/2);
  }
  
}

boolean block_check(){
  boolean re= true;
  //score--;
  if (block_illegal()){
    screen_mode= end_screen;
    re= false;
  }
  //else{
  //  score++;
  //}
  return re;
}

void draw_bottom_block(){
  for (int i=0; i<bottom_block_num; i++){
    image (block_img, bottom_block_x[i], bottom_block_y[i], block_w, block_h);
  }
}

void draw_block(){
  if (!block_check()) return;
  imageMode(CENTER);
  image (block_img, top_block_x, top_block_y, block_w, block_h);
  if (top_block_x<=top_block_x_limitL || top_block_x>=top_block_x_limitR) top_block_move*= -1;
  top_block_x+= top_block_move;
  draw_bottom_block();
}

void draw_block_drop(){
  int block_end_y= bottom_block_y[bottom_block_num-1] - block_h;
  top_block_y+= block_drop_speed;
  if (top_block_y<block_end_y){
    draw_block_dropping (top_block_x, top_block_y);
  }else{
    block_dropped (top_block_x);
    reset_block();
    block_draw_mode= 0;
  }
}

void draw_block_dropping(int blockX, int blockY){
  draw_background();
  image (block_img, blockX, blockY, block_w, block_h);
  draw_bottom_block();
  draw_score();
  //draw_play_UI();
  
}

void block_dropped (int x){
  for (int i=0; i<bottom_block_num-1; i++){
    bottom_block_x[i]= bottom_block_x[i+1];
  }
  bottom_block_x[bottom_block_num-1]= x;
}

boolean block_illegal(){
  boolean re= false;
  int difference= abs(bottom_block_x[bottom_block_num-1]-bottom_block_x[bottom_block_num-2]);
  if (difference>block_w/2) re=true;
  if (re) score--;
  return re;
}

void block_change(){
  if (block_color==0) block_img= loadImage("block0.png");
  if (block_color==1) block_img= loadImage("block1.png");
  if (block_color==2) block_img= loadImage("block2.png");
  if (block_color==3) block_img= loadImage("block3.png");
  if (block_color==4) block_img= loadImage("block4.png");
}

//int top_block_x_change= 1;
void reset_block(){
  // 置左重置
  top_block_x= top_block_x_limitL;
  top_block_y= top_block_y_setting;
  top_block_move= -1 * abs(top_block_move);
  //// 置中重置
  //top_block_x= width/2;
  //top_block_move= -1 * abs(top_block_move);
  //top_block_y= block_space + block_h/2;
  // // 左右重置
  //top_block_x_change*= -1;
  //if (top_block_x_change==1){
  //  top_block_x= top_block_x_limitL;
  //  top_block_move= -1 * abs(top_block_move);
  //}else{
  //  top_block_x= top_block_x_limitR;
  //  top_block_move= abs(top_block_move);
  //}
}
