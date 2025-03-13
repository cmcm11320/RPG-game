room_goto(Next_Room);
other.x = targetX;
other.y = targetY;
Time_Game = Time_Game +1;
show_debug_message(Time_Game);
if(Time_Game >= 23){
show_debug_message("jogo acabooou");
}