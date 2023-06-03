//////////////////////////////////////////////////////////////
/*
	Author: Hez https://steamcommunity.com/id/Hez-Max/
	这个脚本用于 ze_border_b1
	Initial information
	初始化文件，初始化玩家属性，根据玩家人数决定炮塔血量，本来是想做区域检测人数在设置血量的，最后干脆按开局人数计算了

	Update time: 2023/6/3
*/
//////////////////////////////////////////////////////////////

IncludeScript("vs_library")

zone_count <-0
player_number <- 0
TURRET_SHIELD_HEALTH_PER <- 10
turret_health <- 0

//TURRET_HEALTH_PER_PLAYER <- 50
//TEST_HEALTH_PER_PLAYER <- 50

function zone_add(){
	zone_count++;
}

function zone_sub(){
	zone_count--;
}
function show_number(){
	EntFire("show_num","AddOutput","message [player number " + zone_count + "]",0);

}

function confirm_number() {
	player_number = zone_count;
}

function init(){

	turret_health = player_number * TURRET_SHIELD_HEALTH_PER
	EntFire("l1_turret_shield", "SetHealth",  turret_health , 0)

//跑图提醒
	if(player_number < 10){
		Chat("\x06[跑图提醒][玩家人数\x04 " + player_number + " \x06][\x06炮台屏障血量\x04 " + turret_health + "\x06 屏障只会受到爆炸和劈砍类伤害]")
	}

}
function player_init()
{
	player <- null;
	while(player = Entities.FindByClassname(player, "player"))
	{
        if( player.GetTeam() == 3 )//ct
        {
			player.SetHealth(100)
			player.SetMaxHealth(150)

        }
	}


}