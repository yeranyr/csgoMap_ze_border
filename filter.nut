/////////////////////////////////////////////////////////////
/*
    Author: Hez https://steamcommunity.com/id/Hez-Max/
    这个脚本用于 ze_border_b1
    复制由汉尼拔米纳斯p5    Those code is copy from ze_lotr_minas_tirith_p5
    神器使用检测，逻辑很简单，但非常实用    Using for item using check
*/
/////////////////////////////////////////////////////////////

function FilterHolder() {
    if (self.GetMoveParent().GetOwner() == activator)
        EntFireByHandle(self, "FireUser4", "", 0.0, activator, activator)
    else {
        EntFireByHandle(self, "PressIn", "", 0.0, activator, activator)
    }
}

function FilterHolderNoIn() {
    if (self.GetMoveParent().GetOwner() == activator)
        EntFireByHandle(self, "FireUser4", "", 0.0, activator, activator)
}