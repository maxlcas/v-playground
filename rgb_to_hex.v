module main

import os { input }
import encoding.hex { encode }

fn main() {
	inp := os.input('Enter your rgb value, seperated by spaces: ')
	nums := inp.split(' ')
	if nums.len < 3 {
		println('less than 3 rgb values were inputted')
		exit(200)
	}
	println(rgb_to_hex(str_to_u8(&nums[0]), str_to_u8(&nums[1]), str_to_u8(&nums[2])))
	os.input('')
}

fn str_to_u8(s &string) u8 {
	return s.u8()
}

fn rgb_to_hex(r u8, g u8, b u8) string {
	return hex.encode([r, g, b]).str()
}
