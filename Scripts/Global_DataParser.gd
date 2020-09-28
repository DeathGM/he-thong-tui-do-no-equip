extends Node


func load_data(url) -> Dictionary:
	var file = File.new()
	if url == null: return {}
	if !file.file_exists(url): return {}
	file.open(url, File.READ)
	var data:Dictionary = {}
	data = parse_json(file.get_as_text())
	file.close()
	return data

func write_data(url:String, dict:Dictionary):
	var file = File.new()
	if url == null: return
	file.open(url, File.WRITE)
	file.store_line(to_json(dict))
	file.close()
