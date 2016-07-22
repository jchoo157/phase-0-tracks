classroom = {
	desk1: ['pencil', 'paper', 'eraser'],
	desk2: ['binder', 'chips'],
	desk3: ['gameboy', 'calculator'],
	desk4: ['bottle', 'orange'],
	desk5: ['pen', 'brush'],
	desk6: ['sandwhich', 'pencil', 'deodorant'],
	desk7: ['laptop', 'tablet']
}

puts classroom[:desk1][2]
puts classroom[:desk5][1]

p classroom[:desk7].push('watch')

classroom[:desk7][2] = 'smart watch'
p classroom[:desk7]
