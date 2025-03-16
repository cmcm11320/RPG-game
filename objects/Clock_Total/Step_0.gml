//if(room_last !=room){
//Clock_Now = Clock_Now + 10;
//colision = 0;
//show_debug_message("uepa")}

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if(Clock>=23)
{
show_debug_message("Jogo acabouuuu");
}

switch (Clock) {
    case 0:
        Clock_Now = "00:00";
        break;
	case 1:
        Clock_Now = "00:30";
        break;
	case 2:
        Clock_Now = "01:00";
        break;
	case 3:
        Clock_Now = "01:30";
        break;
	case 4:
        Clock_Now = "02:00";
        break;
	case 6:
        Clock_Now = "02:30";
        break;
	case 7:
        Clock_Now = "03:00";
        break;
	case 8:
        Clock_Now = "03:30";
        break;
	case 9:
        Clock_Now = "04:00";
        break;
	case 10:
        Clock_Now = "04:30";
        break;
	case 11:
        Clock_Now = "05:00";
        break;
	case 12:
        Clock_Now = "05:30";
        break;
	case 13:
        Clock_Now = "06:00";
        break;
	case 14:
        Clock_Now = "06:30";
        break;
	case 15:
        Clock_Now = "07:00";
        break;
	case 16:
        Clock_Now = "07:30";
        break;
	case 17:
        Clock_Now = "08:00";
        break;
    default:
        Clock_Now = "08:30";
        break;
}