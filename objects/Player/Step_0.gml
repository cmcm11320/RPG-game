/// @description Insert description here
// You can write your code in this editor


//inputs

depth = -y;

up = keyboard_check(vk_up) or keyboard_check(ord("W"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
left = keyboard_check(vk_left) or keyboard_check(ord("A"));
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
attack = keyboard_check_pressed(vk_space) or keyboard_check(ord("Z"));
interact = keyboard_check_pressed(ord("C"));


    vel_vertical = (down-up) *vel;
	vel_horizontal = (right-left) *vel;
//direcao

dir_idle = (point_direction(0,0,vel_horizontal,vel_vertical)div 90);

dir_walk = (point_direction(0,0,right-left,down-up)div 90);

mid_estado();