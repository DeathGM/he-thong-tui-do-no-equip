extends Area2D


var item = ""
func _on_Food_body_entered(body):
	
	if body.name =="Player" and $time_to_pick.time_left == 0:
		match item:
			"meat":
				inv_add(1,body)
			"egg":
				inv_add(2,body)
			"wood":
				inv_add(3,body)
			"tomato":
				inv_add(4,body)
			"Corn":
				inv_add(5,body)
			"potion1":
				inv_add(6,body)
			"potion2":
				inv_add(7,body)
			"potion3":
				inv_add(8,body)
			"pork":
				inv_add(9,body)

func inv_add(id,body):
	var itemm = Global_Player.inventory_addItem(id)
	body.Inv.update_slot(itemm)
	queue_free()
		
	pass # Replace with function body.


func _on_life_time_timeout():
	queue_free()
	pass # Replace with function body.


func _on_time_to_pick_timeout():
	pass # Replace with function body.
