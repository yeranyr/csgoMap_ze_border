//////////////////////////////////////////////////////////////
/*
	Author: Hez https://steamcommunity.com/id/Hez-Max/
	这个脚本用于 ze_border_b1
	Map information
	地图信息文档

	Update time: 2023/6/3
*/
//////////////////////////////////////////////////////////////

/*
-------------------------
	Colours
	x01 White 白
	x02 Red 红
	x03 Purple 紫
	x04 Vibrant Green 鲜绿色
	x05 Faded Green 湖滨绿
	x06 Less faded Green 淡湖滨绿？我瞎猜的 >_<
	x07 Faded Red 淡红
	x08 Gray 灰色
	x09 Faded Yellow 淡黄
	x10 Brownish Orange 桔棕色
	x0A Very Faded Blue 非常淡的蓝色
	x0B Faded Blue 淡蓝
	x0C Dark Blue 深蓝
-------------------------
TextColor
{
	Normal = 1,   // white
	Red,          // red
	Purple,       // purple
	Location,     // lime green
	Achievement,  // light green
	Award,        // green
	Penalty,      // light red
	Silver,       // grey
	Gold,         // yellow
	Common,       // grey blue
	Uncommon,     // light blue
	Rare,         // dark blue
	Mythical,     // dark grey
	Legendary,    // pink
	Ancient,      // orange red
	Immortal      // orange
}
-------------------------
*/



IncludeScript("vs_library")
function chat(meassage) {
    return Chat(meassage)
}

TEXT_BEFOR <- " \x06 >>> "
TEXT_AFTER <- " <<<"

test_meaaage_1 <- "\x01 >>> White白 <<< \x02 >>> Red红 <<< \x03 >>> Purple紫 <<< \x04 >>> Vibrant Green鲜绿色 <<< \x05 >>> Faded Green湖滨绿 \x06 >>> Less faded Green淡湖滨绿 <<< "
test_meaaage_2 <- "\x07 >>> Faded Red淡红 <<< \x08 >>> Gray灰色 <<< \x09 >>> Faded Yellow淡黄 <<< \x10 >>> Brownish Orange桔棕色 <<< \x0A >>> Very Faded Blue非常淡的蓝色 <<< \x0B >>> Faded Blue淡蓝 <<< \x0C >>> Dark Blue深蓝 <<< "
test_meaaage_3 <- TextColor.Red + "RED" + TextColor.Gold + " YELLOW" + TextColor.Normal + " WHITE"

//map_message_mapname <- TEXT_BEFOR + "Map\x04 BORDER \x06" + TEXT_AFTER

//map_message_mapname <- TEXT_BEFOR + "Map\x04 BORDER \x06" + TEXT_AFTER
map_message_mapname <- TEXT_BEFOR + "Map\x04 BORDER \x06" + TEXT_AFTER

map_message_mapper <- TEXT_BEFOR + "Map by\x04 Hez \x06" + TEXT_AFTER
map_message_warmup1 <- TEXT_BEFOR + "热身时间" + TEXT_AFTER
map_message_warmup2 <- TEXT_BEFOR + "感谢\x04 港村村长\x06 在部分造景灵感方面的帮助" + TEXT_AFTER
map_message_warmup3 <- TEXT_BEFOR + "感谢\x04 7ychu5\x06 提供的选取编译软件的建议" + TEXT_AFTER

map_message_1 <- TEXT_BEFOR + "Current Location: \x04UNKOWN\x06" + TEXT_AFTER
map_message_2 <- TEXT_BEFOR + "当前位置：\x04未知\x06" + TEXT_AFTER
map_message_3 <- TEXT_BEFOR + "人员身份：\x04人体元素实验志愿者\x06" + TEXT_AFTER

map_message_lv1 <- TEXT_BEFOR + "\x04第一关\x06" + TEXT_AFTER
map_message_lv2 <- TEXT_BEFOR + "\x04第二关\x06" + TEXT_AFTER
map_message_lv3 <- TEXT_BEFOR + "\x04第三关\x06" + TEXT_AFTER

admin_l1 <- TEXT_BEFOR + "\x04管理员选择了第一关\x06" + TEXT_AFTER
admin_l2 <- TEXT_BEFOR + "\x04管理员选择了第二关\x06" + TEXT_AFTER
admin_l3 <- TEXT_BEFOR + "\x04管理员选择了第三关\x06" + TEXT_AFTER
admin_rtv <- TEXT_BEFOR + "\x04管理员选择了RTV关\x06" + TEXT_AFTER



//////////////////////////////////////////////
///////////////////// item ///////////////////
//////////////////////////////////////////////

Item_Wall1_Pistol <- TEXT_BEFOR + "玩家捡起了防爆墙" + TEXT_AFTER
Item_Extinguisher_Pistol <- TEXT_BEFOR + "玩家捡起了灭火器" + TEXT_AFTER
Item_Fire_Pistol <- TEXT_BEFOR + "玩家捡起了喷火器" + TEXT_AFTER
Item_Unstable_Element_Pistol <- TEXT_BEFOR + "玩家捡起了不稳定元素" + TEXT_AFTER
Item_Stable_Element_Pistol <- TEXT_BEFOR + "玩家捡起了稳定元素" + TEXT_AFTER
Item_Ammo_Pistol <- TEXT_BEFOR + "玩家捡起了弹药" + TEXT_AFTER



///////////////////////////////////////////////////////////
/////////////////// l1 <- TEXT_BEFOR + "" + TEXT_AFTER///////////////////
///////////////////////////////////////////////////////////

l1_door0 <- TEXT_BEFOR + "卫生间门被锁死了，让我们炸开它，\x04 10秒 \x06后炸开道路" + TEXT_AFTER
l1_door1 <- TEXT_BEFOR + "大门在\x04 25秒 \x06后打开" + TEXT_AFTER
l1_element_room_1 <- TEXT_BEFOR + "离开的道路被锁死了，想办法逃出这里" + TEXT_AFTER
l1_element_room_2 <- TEXT_BEFOR + "安保控制室的按钮能打开铁门，但按钮被锁死了" + TEXT_AFTER
l1_element_room_3 <- TEXT_BEFOR + "隔壁好像就是元素实验室，利用实验超载电力系统或许可以解锁" + TEXT_AFTER
l1_element_room_4 <- TEXT_BEFOR + "实验室门打开了，快进去" + TEXT_AFTER

l1_element_room_door1 <- TEXT_BEFOR + "实验室大门在\x04 35秒 \x06后打开" + TEXT_AFTER
l1_element_room_door1_1 <- TEXT_BEFOR + "实验室大门在\x04 10秒 \x06后关闭" + TEXT_AFTER
l1_element_room_door1_back <- TEXT_BEFOR + "实验室大门在\x04 25秒 \x06后打开" + TEXT_AFTER

l1_door2 <- TEXT_BEFOR + "铁丝网门在\x04 20秒 \x06后打开" + TEXT_AFTER

l1_ob1_1 <- TEXT_BEFOR + "道路被混凝土堵住了，让我们用炸药炸开" + TEXT_AFTER
l1_ob1_2 <- TEXT_BEFOR + "爆破物已部署，注意保持安全距离" + TEXT_AFTER
l1_ob1_3 <- TEXT_BEFOR + "坚守等待\x04 30秒 \x06炸药爆炸" + TEXT_AFTER
l1_ob1_4 <- TEXT_BEFOR + "道路炸开了，但火势太大了，我们无法通过，找到消防按钮，我们需要灭火..." + TEXT_AFTER
l1_ob1_insert <- TEXT_BEFOR + "道路被行李箱挡住了，防守\x04 15秒 \x06炸开通路" + TEXT_AFTER

l1_door3 <- TEXT_BEFOR + "道路在\x04 20秒 \x06后打开" + TEXT_AFTER
l1_ob2 <- TEXT_BEFOR + "防守\x04 15秒 \x06炸开道路" + TEXT_AFTER


l1_elevator1 <- TEXT_BEFOR + "防守\x04 15秒 \x06电梯到达" + TEXT_AFTER
l1_elevator1_door <- TEXT_BEFOR + "电梯门\x04 5秒 \x06关闭" + TEXT_AFTER
l1_door5 <- TEXT_BEFOR + "注意\x04 5秒 \x06后开放僵尸近路" + TEXT_AFTER

l1_door6_door7 <- TEXT_BEFOR + "防守\x04 25秒 \x06卷帘门打开" + TEXT_AFTER

l1_ob3_1 <- TEXT_BEFOR + "到达基地后门了，看起来很脆弱的后门，让我们炸开它" + TEXT_AFTER
l1_ob3_2 <- TEXT_BEFOR + "防守\x04 8秒 \x06炸开基地后门" + TEXT_AFTER
l1_ob3_3 <- TEXT_BEFOR + "爆炸让藏在维修通道墙壁里的炸药殉爆了，谁会在这里埋炸弹呢" + TEXT_AFTER


l1_wire_0 <- TEXT_BEFOR + "前方没有道路了，我们撤退到安全屋去" + TEXT_AFTER
l1_wire_1 <- TEXT_BEFOR + "我们需要电力来打开被锁住的安全门，快把断开的电线接通" + TEXT_AFTER
l1_wire_2 <- TEXT_BEFOR + "很好，电力即将恢复，防守\x04 30秒 \x06后电力开关解锁" + TEXT_AFTER

l1_wire_3 <- TEXT_BEFOR + "电力恢复了，快去手动打开安全门" + TEXT_AFTER
l1_final_door1 <- TEXT_BEFOR + "防守\x04 20秒 \x06安全门关闭" + TEXT_AFTER

////////////////////////////////////////////////////////////
/////////////////// l2 <- TEXT_BEFOR + "" + TEXT_AFTER////////////////////
///////////////////////////////////////////////////////////

l2_start1 <- TEXT_BEFOR + "我们需要进入这个研究所才能离开这里，去看看能否从正门进入" + TEXT_AFTER
l2_start2 <- TEXT_BEFOR + "果然正门被锁住了，去围墙上的控制室手动开启" + TEXT_AFTER
l2_start3 <- TEXT_BEFOR + "旁边的房间内应该有开启控制室门的方法" + TEXT_AFTER

l2_door1 <- TEXT_BEFOR + "上方控制室门\x04 20秒 \x06解锁" + TEXT_AFTER

l2_button2_1 <- TEXT_BEFOR + "正在获取正门权限，准备开启正门" + TEXT_AFTER
l2_button2_2 <- TEXT_BEFOR + "防守\x04 10秒 \x06打开正门" + TEXT_AFTER
l2_button2_3 <- TEXT_BEFOR + "不对，安保的权限等级不足，无法从安保室开启正门" + TEXT_AFTER
l2_button2_4 <- TEXT_BEFOR + "我们的炸药不足以炸开这种安全门，我们需要找到另一条道路" + TEXT_AFTER
l2_button2_5 <- TEXT_BEFOR + "改变计划，我们利用外侧管道和维修通道进入基地" + TEXT_AFTER
l2_button2_tp1 <- TEXT_BEFOR + "防守\x04 30秒 \x06僵尸传送" + TEXT_AFTER
l2_button2_tp2 <- TEXT_BEFOR + "僵尸传送了，快从管道外侧上去" + TEXT_AFTER

l2_ob3 <- TEXT_BEFOR + "防守\x04 15秒 \x06栅栏破碎" + TEXT_AFTER
l2_button3_1 <- TEXT_BEFOR + "管道\x04 35秒 \x06后打开" + TEXT_AFTER
l2_button3_2 <- TEXT_BEFOR + "僵尸\x04 15秒 \x06后传送" + TEXT_AFTER

l2_ob8_1 <- TEXT_BEFOR + "道路又被堵住了，这里的人撤退的时候全落下了行李" + TEXT_AFTER
l2_ob8_2 <- TEXT_BEFOR + "时间紧迫，老方法，让我们炸开它们" + TEXT_AFTER
l2_ob8_3 <- TEXT_BEFOR + "防守\x04 10秒 \x06炸开道路" + TEXT_AFTER

l2_door2 <- TEXT_BEFOR + "办公室门\x04 30秒 \x06解锁" + TEXT_AFTER
l2_door2_zm1 <- TEXT_BEFOR + "研究所外的传送已经关闭，僵尸可以尝试从研究所正门进攻" + TEXT_AFTER
l2_door2_zm2 <- TEXT_BEFOR + "研究所的正门会和办公室门同步解锁" + TEXT_AFTER
l2_door2_zm3 <- TEXT_BEFOR + "僵尸也可以尝试从开放的密道进攻" + TEXT_AFTER
l2_elevator1_1 <- TEXT_BEFOR + "电梯按钮已经按下" + TEXT_AFTER
l2_elevator1_2 <- TEXT_BEFOR + "防守\x04 15秒 \x06电梯到达" + TEXT_AFTER
l2_elevator1_3 <- TEXT_BEFOR + "电梯\x04 15秒 \x06后关闭" + TEXT_AFTER

l2_upper_ob1 <- TEXT_BEFOR + "障碍\x04 15秒后 \x06清除" + TEXT_AFTER

l2_hel_1 <- TEXT_BEFOR + "太好了，还有一架直升机，看起来完好无损" + TEXT_AFTER
l2_hel_2 <- TEXT_BEFOR + "我们就用它离开这里，不过我们需要先补充燃料" + TEXT_AFTER
l2_hel_3 <- TEXT_BEFOR + "旁边的仓库里就有输油管道，我们可以利用它" + TEXT_AFTER

l2_button_oil_1 <- TEXT_BEFOR + "开始输油，防守直到五个油桶灌满" + TEXT_AFTER
l2_button_oil_2 <- TEXT_BEFOR + "很好，五桶油都灌满了，这足够支撑我们逃离这里" + TEXT_AFTER
l2_button_oil_3 <- TEXT_BEFOR + "撤退，快去拿上油罐，我们要离开这个鬼地方了" + TEXT_AFTER

l2_hel_leave_1 <- TEXT_BEFOR + "燃料补充完毕" + TEXT_AFTER
l2_hel_leave_2 <- TEXT_BEFOR + "直升机\x04 30秒后 \x06离开" + TEXT_AFTER


////////////////////////////////////////////////////////////
/////////////////// l3 <- TEXT_BEFOR + "" + TEXT_AFTER////////////////////
///////////////////////////////////////////////////////////


l3_ob1 <- TEXT_BEFOR + "防守\x04 30秒 \x06铁网破碎" + TEXT_AFTER
l3_door1 <- TEXT_BEFOR + "防守\x04 25秒 \x06打开大门" + TEXT_AFTER
l3_door2 <- TEXT_BEFOR + "僵尸侧路门\x04 5秒 \x06打开" + TEXT_AFTER
l3_ob2 <- TEXT_BEFOR + "防守\x04 15秒 \x06铁网破碎" + TEXT_AFTER
l3_elev1 <- TEXT_BEFOR + "电梯\x04 35秒 \x06后离开" + TEXT_AFTER

l3_door3 <- TEXT_BEFOR + "大门\x04 30秒 \x06后打开" + TEXT_AFTER
l3_elev2 <- TEXT_BEFOR + "电梯\x04 20秒 \x06后离开" + TEXT_AFTER
l3_elev3 <- TEXT_BEFOR + "下水道电梯\x04 35秒 \x06后离开" + TEXT_AFTER

l3_door4 <- TEXT_BEFOR + "大门\x04 20秒 \x06后打开" + TEXT_AFTER
l3_elev4 <- TEXT_BEFOR + "电梯\x04 20秒 \x06后离开" + TEXT_AFTER

l1_elev_add1 <- TEXT_BEFOR + "小货梯\x04 30秒 \x06后离开" + TEXT_AFTER

l3_elev_ground <- TEXT_BEFOR + "通往地表的电梯\x04 30秒 \x06后离开" + TEXT_AFTER

l3g_door1 <- TEXT_BEFOR + "停机坪大门\x04 20秒 \x06后打开" + TEXT_AFTER
l3g_ob_case1 <- TEXT_BEFOR + "道路\x04 20秒 \x06后打开" + TEXT_AFTER
l3g_door2 <- TEXT_BEFOR + "实验室大门\x04 30秒 \x06后打开" + TEXT_AFTER

lab_plat <- TEXT_BEFOR + "平台\x04 10秒 \x06后上升" + TEXT_AFTER
lab_door2 <- TEXT_BEFOR + "隐藏门\x04 20秒 \x06后打开" + TEXT_AFTER

lab_door5 <- TEXT_BEFOR + "门\x04 40秒 \x06后打开" + TEXT_AFTER
lab_door6 <- TEXT_BEFOR + "门\x04 10秒 \x06后打开" + TEXT_AFTER

lab_door8 <- TEXT_BEFOR + "核心实验室门\x04 15秒 \x06后打开" + TEXT_AFTER

lab_end1 <- TEXT_BEFOR + "核心迁跃实验即将启动" + TEXT_AFTER
lab_end2 <- TEXT_BEFOR + "这是最后的防守了" + TEXT_AFTER
lab_end3 <- TEXT_BEFOR + "传送门道路\x04 45秒 \x06后打开" + TEXT_AFTER


rtv_end <- TEXT_BEFOR + "\x04 60秒 \x06" + TEXT_AFTER