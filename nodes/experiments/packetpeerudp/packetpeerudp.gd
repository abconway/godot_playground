extends GameExperiment
class_name PacketPeerUDPExperiment


const ADDRESS = 'localhost'
const PORT = 25752

@onready var user_line_edit: LineEdit = $LoginScreen/UserLineEdit
@onready var password_line_edit: LineEdit = $LoginScreen/PasswordLineEdit
@onready var label: Label = $LoginScreen/Label


func _ready() -> void:
	label.text = 'Input username and password'
	user_line_edit.grab_focus()


func send_credentials() -> void:
	var message = {
		'authentication_credentials': {
			'user': user_line_edit.text,
			'password': password_line_edit.text,
		}
	}
	var packet = PacketPeerUDP.new()
	packet.connect_to_host(ADDRESS, PORT)
	packet.put_var(JSON.stringify(message))
	while packet.wait() == OK:
		var response = JSON.parse_string(packet.get_var())
		if 'token' in response:
			AuthenticationCredentials.token = response['token']
			AuthenticationCredentials.user = message['authentication_credentials']['user']
			label.text = "logged in!"
			#get_tree().change_scene_to_file()
		else:
			label.text = 'Login failed!'
		
