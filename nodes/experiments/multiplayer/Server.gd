extends Node


const IP_ADDRESS = '127.0.0.1'
const PORT = 27572
const MAX_CLIENTS = 1

var peer_server := ENetMultiplayerPeer.new()


func _ready() -> void:	
	peer_server.create_server(PORT, MAX_CLIENTS)
	multiplayer.multiplayer_peer = peer_server
	multiplayer.peer_connected.connect(_on_peer_connected)
	print(multiplayer.is_server())


func _on_peer_connected(peer_id: int) -> void:
	print("Peer Connected: ", peer_id)
