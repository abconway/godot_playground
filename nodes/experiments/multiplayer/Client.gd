extends Node

const IP_ADDRESS = '127.0.0.1'
const PORT = 27572
const MAX_CLIENTS = 1


func _ready() -> void:
	# Create Client
	var peer_client = ENetMultiplayerPeer.new()
	peer_client.create_client(IP_ADDRESS, PORT)
	multiplayer.multiplayer_peer = peer_client
	print(multiplayer.get_unique_id())
