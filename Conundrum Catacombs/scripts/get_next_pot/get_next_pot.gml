/// @desc Get next power of two number from a given 32-bit integer
/// @arg n The 32-bit integer to get the next power of two for
/// @returns The next power of two number closest to n
function get_next_pot(argument0) {

	var n = argument0 - 1;

	n |= n >> 1;
	n |= n >> 2;
	n |= n >> 4;
	n |= n >> 8;
	n |= n >> 16;

	return n + 1;


}
