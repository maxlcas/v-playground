module reader

pub struct Reader {
	bytes []u8
mut:
	offset int
}
pub fn (mut reader Reader) read_int() int {
	defer {
		reader.offset += 4
	}

	bytes := reader.bytes
	offset := &reader.offset

	return bytes[*offset] | ( int(bytes[*offset + 1]) << 8 ) | ( int(bytes[*offset + 2]) << 16 ) | ( int(bytes[*offset + 3]) << 24 )
}

pub fn read_f32(bytes []u8, mut offset &int) f32 { // not complete
	defer {
		offset += 4
	}
	return 0
}
