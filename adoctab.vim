function! AdocTab()
	call inputsave()
	let cols = input("Number of columns?: ")
	let rows = input("Number of rows?: ")
	call inputrestore()
	let table = ""
	let table = table . "|===\n"
	for c in range(1,rows)
		let row = ""
		for i in range(1,cols)
			let row = row . "| x "
		endfor
		let table = table . row . "\n"
	endfor
	let table = table . "|===\n"
	let @" = table
	return "Paste the table"
endfunction			
