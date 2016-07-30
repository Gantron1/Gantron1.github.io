"Construct *label blocks from *choice block just above cursor
function! MakeChoices()
	" If Fast Move mode is on, turn it off
    if (g:fastMoveMode == 1)
		call ToggleFastMoveMode()
	endif

	"If EasyMotion remappings are on, turn off
	if (g:easymotionMode == 1)
		call ToggleEasyMotionMode()
		let changedEasyMotionMode = 1
	else
		let changedEasyMotionMode = 0
	endif
	
	:let save_view = winsaveview()
	let start = line('.')

	"Locate previous *choice. (b=backwards, W=nowrap, n=doNot move cursor)
	let choiceStartLine = search('^*choice', 'bW')

	if !choiceStartLine
		echo "No *choice found. (*choice must not be indented. This is to avoid finding *choice blocks nested in another *choice block.)"
		return -1
	endif
	"return getline(target_line_num, target_line_num+4)
	"Locate end of *choice block
	"echo getline(choiceStartLine, choiceStartLine+2)
	let choiceEndLine = search('^\S.*', 'W') "End is first line that starts with non-whitespace

	"If above search fails, might be at bottom of buffer
	if choiceEndLine == 0
		let choiceEndLine = search('^$', 'W') "End is first empty line
	endif

	"Now go back up to the last *goto
	let choiceEndLine = search('*goto', 'bW')
	
	"Get the entire *choice block and put it in gotoBlock
	let gotoBlock = getline(choiceStartLine, choiceEndLine)

	"Make labelArray (contains all labels to goto)
	let labelArray = []

	for cur in gotoBlock
		if match(cur, '*goto') != -1
			"echo 'cur: '.cur
			let curParsed = matchlist(cur, '*goto \(\S\+\)')
			"echo curParsed
			if len(curParsed) > 1
				let curLabel = curParsed[1]
			else
				echo 'ERROR: Bad *goto ('.cur.')'
				return -1
			endif
			call add(labelArray, curLabel)	
		endif
	endfor

	"Restore window to what it looked like (in case the searches scrolled
	"it)
	call winrestview(save_view)
	
	"Make newline after choice block if needed
	if strlen(getline(choiceEndLine+1)) > 0
		echo 'big line: '.getline(choiceEndLine+1)
		call cursor(choiceEndLine, 1)
		put=''
	endif

	call cursor(choiceEndLine+1, 1)

	"Put the new label blocks
	let skippedLabels = ''
	let numNewLabels = 0
	for cur in labelArray
		if !search('*label '.cur, 'wn')
			let numNewLabels += 1
			put='*label '.cur
			put='[This option is yet to be written.]'
			put=''
		else
			let skippedLabels .= cur.' '
		endif
	endfor

	"Remove trailing blank lines (Up to a point)
	let nextlines = getline(line('.')+1, line('.')+3)
	if len(nextlines) == 3
		if nextlines[0] == '' && nextlines[1] == '' && nextlines[2] == ''
			normal "_3dd
		elseif nextlines[0] == '' && nextlines[1] == ''
			normal "_2dd
		elseif nextlines[0] == ''
			normal "_dd
		endif
	endif

	"Move to first label's text (use ctrl-v ctrl-m to input the <CR> at
	"end)
	call cursor(choiceEndLine, 1)
	normal /\[This option is yet to be written.\]
	
	"Print status message
	if len(skippedLabels) > 0
		echo 'Skipped: '.skippedLabels
	else
		echo 'New labels created: '.numNewLabels
	endif

	"If changed EasyMotion mode, change it back
	if changedEasyMotionMode
		call ToggleEasyMotionMode()
	endif

endfunction
