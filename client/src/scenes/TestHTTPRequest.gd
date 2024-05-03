extends HTTPRequest

var label

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_parent().get_node("Label")
	
	var http_request = HTTPRequest.new()
	# set a timeout of 1 second
	http_request.set_timeout(1.0)
	add_child(http_request)
	http_request.connect("request_completed", self, "_http_request_completed")
	
	var error = http_request.request("http://localhost:8080/")
	if error != OK:
		push_error("An error occurred in the HTTP request")

func _http_request_completed(result, response_code, headers, body):
	if len(body) == 0:
		print("No response")
		label.text = "No response"
		return
	
	var response = parse_json(body.get_string_from_utf8())
	print(response['test'])
	label.text = response['test']
