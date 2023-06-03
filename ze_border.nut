//////////////////////////////////////////////////////////////
/*
    Author: Hez https://steamcommunity.com/id/Hez-Max/
	这个脚本用于 ze_border_b1
    Some scripts of the border
    一些基本的脚本，按钮检测，处死之类的

	Update time: 2023/6/3
*/
//////////////////////////////////////////////////////////////


IncludeScript("vs_library")

function chat(meassage) {
    return Chat(meassage)
}

final_check <- " \x06>>> 检查终点内是否有僵尸 <<<"

///////////////////////////////////////
// function kill T
function message_kill_t(){
	chat("\x06>>> 终点没有僵尸，完成关卡 <<<")
    Chat("\x06>>> 处死所有僵尸和安全区域外的人类 <<<")
}

function Kill_t() {

    player <- null;

	while(player = Entities.FindByClassname(player, "player"))
	{
        if( player.GetTeam() == 2 )//	返回玩家的队伍. 观察 = 1, t = 2, ct = 3
        {
            EntFireByHandle(player, "SetHealth", "-1", 0, null, null)
        }
	}
	EntFire("Server", "Command", "bot_kill all t", 0, null)
}
///////////////////////////////////////

///////////////////////////////////////
// function kill CT

function message_kill_ct(){
	chat("\x06>>> 终点内有僵尸，我们失败了 <<<")
	Chat("\x06>>> 处死所有人类 <<<")
}
function Kill_ct() {

    player <- null;
	while(player = Entities.FindByClassname(player, "player"))
	{
        if( player.GetTeam() == 3 )//	返回玩家的队伍. 观察 = 1, t = 2, ct = 3
        {
            EntFireByHandle(player, "SetHealth", "-1", 0, null, null)
        }
	}
	EntFire("Server", "Command", "bot_kill all ct", 0, null)
}
///////////////////////////////////////

function PassTest() {
    activator_team <- activator.GetTeam()
    caller_name <- caller.GetName()

    if(caller_name == "l2_button_oil_leave" && activator_team == 2){ // T
        chat("\x06>>> 僵尸抢夺了我们的燃料，我们失败了 <<<")
        Kill_ct()
    }else if(caller_name == "l2_button_oil_leave" && activator_team == 3){ // CT

        chat("\x06>>> 拿到燃料了，快走！ <<<")
    }
}

function PassTest_l3() {
    activator_team <- activator.GetTeam()
    caller_name <- caller.GetName()

    if(caller_name == "l2_button_oil_leave" && activator_team == 2){ // T
        chat("\x06>>> 僵尸触发了按钮，处死全人类 <<<")
        Kill_ct()
    }else if(caller_name == "l2_button_oil_leave" && activator_team == 3){ // CT
       return
    }

}
///////////////////////////////////////
function Item_Unstable_Element_Ezwin()//Ezwin保护
{
    local player_list = [];
	player <- null;
	player_ezwin <- null;
	while(player = Entities.FindByClassname(player,"player"))
	{
		if(player.GetTeam()==2 && player.GetHealth() > 0){
			player_list.push(player);
        }
	}
    //chat(player_list+"")
    player_ezwin = player_list[RandomInt(0,player_list.len()-1)];
    //chat(player_ezwin+"")
    EntFireByHandle(player_ezwin, "Addoutput", "origin 10084 9423 3031", 0, null, null)
    EntFireByHandle(player_ezwin, "Addoutput", "origin 9568 4267 460", 0.5, null, null)
}

