local RPlayer = debug.getregistry().Player 
local REntity = debug.getregistry().Entity

util.AddNetworkString("TFA_HL2R_CreateClientDynamicLight")

function CreateCLLight(pos,dietime,col,size,bright)
	net.Start("TFA_HL2R_CreateClientDynamicLight")
	net.WriteVector(pos)
	net.WriteFloat(dietime)
	net.WriteVector(Vector(col.r,col.g,col.b))
	net.WriteFloat(size)
	net.WriteFloat(bright)
	net.Broadcast()
end