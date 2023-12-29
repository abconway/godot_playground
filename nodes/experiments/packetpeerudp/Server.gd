extends Node2D


const PORT = 25752

var server = UDPServer.new()


func _ready() -> void:
	server.listen(PORT)


func _process(delta: float) -> void:
	server.poll()
	if server.is_connection_available():
		var peer = server.take_connection()
		var message = JSON.parse_string(peer.get_var())
		if 'authentication_credentials' in message:
			authenticate_player(peer, message)


func authenticate_player(peer: PacketPeerUDP, message: Dictionary) -> void:
	pass
