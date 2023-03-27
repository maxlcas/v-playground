module reader

pub fn read_int(bytes []u8, mut offset &int) int {
	defer {
		offset += 4
	}

	offset_d := offset // forced by compiler bug, to be fixed.
	return bytes[offset_d] | ( int(bytes[offset_d + 1]) << 8 ) | ( int(bytes[offset_d + 2]) << 16 ) | ( int(bytes[offset_d + 3]) << 24 )
}

pub fn read_f32(bytes []u8, mut offset &int) f32 { // not complete
	defer {
		offset += 4
	}
	return 0
}
