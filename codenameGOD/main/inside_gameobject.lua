function inside_gameobject(sprite_url, x, y, offset)
	local go_url = msg.url(sprite_url.socket, sprite_url.path, nil)
	local offset = offset or vmath.vector3()

	local go_scale = go.get_scale_vector(go_url)
	local sprite_scale = go.get(sprite_url, "scale")
	local size = go.get(sprite_url, "size")
	local pos = go.get_position(go_url)

	pos.x = pos.x + offset.x * go_scale.x
	pos.y = pos.y + offset.y * go_scale.y

	local scaled_size = vmath.vector3(size.x * go_scale.x * sprite_scale.x, size.y * go_scale.y * sprite_scale.y, 0)

	if x >= pos.x - scaled_size.x / 2 and x <= pos.x + scaled_size.x / 2 and y >= pos.y - scaled_size.y / 2 and y <= pos.y + scaled_size.y / 2 then
		return true
	else
		return false
	end
end
return inside_gameobject