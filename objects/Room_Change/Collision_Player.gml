room_goto(Next_Room);
other.x = targetX;
other.y = targetY;


with(Clock_Total){
Clock = Clock +1;
show_debug_message("Clocktime is: " + string(Clock));
}
//show_debug_message(Time_Game);
//if(Time_Game >= 23){
//show_debug_message("jogo acabooou");
//}else{
//	show_debug_message("keep playing");
//}  