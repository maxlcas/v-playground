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
	println(rgb_to_hex(nums[0].u8(), nums[1].u8(), nums[2].u8()))
	os.input('')
}


fn rgb_to_hex(r u8, g u8, b u8) string {
	return hex.encode([r, g, b]).str()
}
