#Only Alphabet + basic symbols (punctuation, space)
#5-bit system
#Counts up in order, 00000 is space

from random import choice, seed

alphabetToBin = {
	" " : '000000',
	"a" : '000001',
	"b" : '000010',
	"c" : '000011',
	"d" : '000100',
	"e" : '000101',
	"f" : '000110',
	"g" : '000111',
	"h" : '001000',
	"i" : '001001',
	"j" : '001010',
	"k" : '001011',
	"l" : '001100',
	"m" : '001101',
	"n" : '001110',
	"o" : '001111',
	"p" : '010000',
	"q" : '010001',
	"r" : '010010',
	"s" : '010011',
	"t" : '010100',
	"u" : '010101',
	"v" : '010110',
	"w" : '010111',
	"x" : '011000',
	"y" : '011001',
	"z" : '011010',
	"." : '011011',
	"?" : '011100',
	"!" : '011101',
	"," : '011110',
	"'" : '011111',
	"<" : '100000',
	">" : '100001',
	"(" : '100010',
	")" : '100011',
	"/" : '100100',
	":" : '100101',
	";" : '100110',
	"|" : '100111',
	"[" : '101000',
	"]" : '101001',
	"{" : '101010',
	"}" : '101011',
	"`" : '101100',
	"~" : '101101',
	"#" : '101110',
	"$" : '101111',
	"-" : '110000',
	"8" : '110001',
	"=" : '110010',
	"+" : '110011',
	"%" : '110100',
	"9" : '110101',
	"&" : '110110',
	"*" : '110111',
	"0" : '111000',
	"1" : '111001',
	"2" : '111010',
	"3" : '111011',
	"4" : '111100',
	"5" : '111101',
	"6" : '111110',
	"7" : '111111'
}
	
binToAlphabet = {}
for key in alphabetToBin:
	val = alphabetToBin.get(key)
	binToAlphabet.update({val:key})

#print('WARNING: The variable name "alphabet" is used in the compiling and decompiling of binary. When using this module, DO NOT re-assign the name "alphabet".')

def bincompile(string2):
	binary = ""
	alphabet = alphabetToBin
	string = string2.lower()
	string2 = ""
	if type(string) is str:
		for i in string:
			binary = binary + alphabet.get(i)
			
		return binary
		
	else:
		raise TypeError('compile takes type str')

def bindecompile(binaryStr):
	alphabet = binToAlphabet
	if type(binaryStr) is str:
		string = ""
		startIndex = 0
		while True:
			endIndex = startIndex + 6
			string = string + alphabet.get(binaryStr[startIndex:endIndex])
			startIndex += 6
			if startIndex >= len(binaryStr):
				break
			
		return string
		
	else:
		raise TypeError('decompile takes type str')
		
def encrypt(key, string):
	seed(key)

	keystr = bincompile(key)
	encrypted = ''
	while len(string) > len(keystr):
		keystr += choice(['0', '1'])

	for index in range(len(string)):
		keychar = keystr[index]
		strchar = string[index]
		
		if strchar != keychar:
			encrypted += '1'
		else:
			encrypted += '0'
			
	return encrypted
	
def decrypt(key, string):
	seed(key)
	keystr = bincompile(key)
	
	while len(string) > len(keystr):
		keystr += choice(['0', '1'])
	
	decrypted = ''
	for index in range(len(string)):
		keychar = keystr[index]
		strchar = string[index]
		
		if strchar != keychar:
			decrypted += '1'
		else:
			decrypted += '0'
			
	return decrypted
	
def fullencrypt(key, string):
	binary = bincompile(string)
	encrypted = encrypt(key,binary)
	result = bindecompile(encrypted)
	return result

def fulldecrypt(key, string):
	binary = bincompile(string)
	decrypted = decrypt(key, binary)
	result = bindecompile(decrypted)
	return result

#Number Encryption

def num_encrypt(offset, string: str):
	if not type(string) == str:
		raise TypeError(f"num_encrypt takes type 'str', not type '{type(string)}'")

	numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

	return_str = ""
	for number in string:
		numbers += (numbers[:offset])
		numbers[:offset] = []
		return_str += numbers[int(number)]
		offset = int(number)

	return return_str

def num_decrypt(offset, string: str):
	if type(string) != str:
		raise TypeError(f"num_decrypt takes type 'str', not type '{type(string)}'")

	numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
	return_str = ""
	for number in string:
		offset = 0-offset
		numbers = numbers[offset:] + numbers[:offset]
		print(numbers)
		return_str += numbers[int(number)]
		offset = int(number)

	return return_str

def string_to_num(string):
	alphabet = " abcdefghijklmnopqrstuvwxyz-.?!@#$%^&*()_=+':;<>,/`~1234567890"
	num_string = ""
	for char in string:
		if char not in alphabet:
			return ValueError(f"Invalid character {char}. string_to_num only handles ' abcdefghijklmnopqrstuvwxyz-.?!@#$%^&*()_=+':;<>,/`~1234567890'.")

		num_string += str(alphabet.index[char])

	return num_string

def num_to_string(number):
	alphabet = " abcdefghijklmnopqrstuvwxyz-.?!@#$%^&*()_=+':;<>,/`~1234567890"

	string_num = ""
	for char in number:
		if char > len(alphabet):
			raise ValueError(f"Invalid character {char}. Only takes numbers from 0 to {len(alphabet)}.")

		string_num += alphabet[int(char)]

	return string_num

def number_cipher(offset, string, mode="encrypt"):
	if mode not in ["encrypt","decrypt"]:
		raise ValueError("number_cipher")

	if mode == "encrypt":
		converted_string = string_to_num(string)
		converted_key = string_to_num(key)

		encrypted_message = num_encrypt(offset, converted_string)
		converted_message = num_to_string(encrypted_message)

		return converted_message