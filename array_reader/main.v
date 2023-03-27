import reader
import utilities

import encoding.hex { decode }
import os

fn main() {
	array_type := os.input("Will you be using a hex array or denary array? [1, 2]\n")
	match array_type {
		"1" { hexadecimal_conversion()! }
		"2" { denary_conversion() }
		else {  }
	}
}

fn denary_conversion()  {
	denary_array_str := os.input('Enter your array, with spaces seperating it\n')
	denary_array := utilities.to_u8_array(denary_array_str.split(' '))

	mut offset := 0
	println(reader.read_int(denary_array,  mut &offset))
	println(reader.read_int(denary_array,  mut &offset))
	os.input('')
}

fn hexadecimal_conversion() ! {
	hex_array_str := os.input('Enter your array, with spaces seperating it\n')
	hex_array := decode(hex_array_str.replace(' ', ''))!

	mut offset := 0
	println(reader.read_int(hex_array, mut &offset))
	println(reader.read_int(hex_array, mut &offset))
	os.input('')
}
