class_name cipher

static func xor(key: PackedByteArray, msg: PackedByteArray) -> PackedByteArray:
	var xored: PackedByteArray = []
	
	var key_idx: int = 0
	
	for c in msg:
		var k := key[key_idx]
		var e = k ^ c
		
		key_idx += 1
		if key_idx >= len(key):
			key_idx = 0
		
		xored.append(e)
	
	return xored
	
