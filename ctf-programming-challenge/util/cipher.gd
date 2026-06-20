class_name cipher

static func xor(key: PackedByteArray, msg: PackedByteArray) -> PackedByteArray:
	var xored: PackedByteArray = []
	
	var key_idx: int = 0
	
	for c in msg:
		var k := key[key_idx]
		var e = k ^ c
		
		xored.append(e)
	
	return xored
	
