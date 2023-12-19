extends Node

const IP_ADDRESS = '127.0.0.1'
const PORT = 27572
const MAX_CLIENTS = 1


func _ready() -> void:	
	# Create Server
	var peer_server = ENetMultiplayerPeer.new()
	peer_server.create_server(PORT, MAX_CLIENTS)
	multiplayer.multiplayer_peer = peer_server
	print(multiplayer.is_server())
	
