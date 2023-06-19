function npst_hole_fix() {
    playerpos <- activator.GetOrigin()
    playerpos.x = playerpos.x
    playerpos.y = playerpos.y + 40
    playerpos.z = playerpos.z
    activator.SetOrigin( playerpos)
}
function test2() {
    pos <- activator.GetOrigin()
    pos.x = pos.x + 100
    pos.y = pos.y + 100
    pos.z = pos.z + 100
    activator.SetOrigin( pos)
    //activator.SetOrigin( activator.GetOrigin())
}