"true/false, up/down切换
nnoremap <silent> W :call JumpToNextWord()<CR>
nnoremap <silent><leader>r :call CompileRunGcc()<CR>
nnoremap <silent> tt ciw<C-r>=modify#toggleWord(@")<cr><esc>
" xnoremap <silent> <A-t> s<C-r>=modify#toggleWord(@")<cr><esc>

"NOTE lis大小写或首字母大写，全用小写，其他情况保留原大小写
function! modify#toggleWord(word)
    let lis = [
                \ ['!', '！'],
                \ [',', '，'],
                \ ['.', '。'],
                \ ['<^', 'LCtrl & '],
                \ ['>^', 'RCtrl & '],
                \ ['<+', 'LShift & '],
                \ ['>+', 'RShift & '],
                \ ['<!', 'LAlt & '],
                \ ['>!', 'RAlt & '],
                \ ['FireShot', 'mcbpblocgmgfnpjjppndjkmgjaogfceg'],
                \ ['Surfingkeys', 'gfbliohnnapiefjpjlpjnehglfpaknnc'],
                \ ['SwitchyOmega', 'padekgcemlokbadohgkifijomclgjgif'],
                \ ['Tampermonkey', 'dhdgffkkebhmkfjojejmpbldmpobfkfo'],
                \ ['from', 'to'],
                \ ['yes', 'no'],
                \ ['on', 'off'],
                \ ['down', 'up'],
                \ ['left', 'right'],
                \ ['top', 'bottom'],
                \ ['this', 'base'],
                \ ['read', 'write'],
                \ ['row', 'column'],
                \ ['rows', 'columns'],
                \ ['focus', 'blur'],
                \ ['lower', 'upper'],
                \ ['odd', 'even'],
                \ ['before', 'after'],
                \ ['max', 'min'],
                \ ['prev', 'next'],
                \ ['true', 'false'],
                \ ['enable', 'disable'],
                \ ['enabled', 'disabled'],
                \ ['user', 'pwd'],
                \ ['width', 'height'],
                \ ['horizontal', 'vertical'],
                \ ['username', 'password'],
                \ ['左', '右'],
                \ ['上', '下'],
                \ ['水平', '垂直'],
                \ ['1', '0'],
                \ ['0', '1'],
                \ ['public', 'private'],
                \ ['private', 'public'],
                \ ]
    let word = a:word
    "word前后内容
    let idx0 = stridx(getline('.'), word, col('.')-strlen(word))
    let strBefore = strpart(getline('.'), 0, idx0)
    let strAfter = strpart(getline('.'), idx0+strlen(word))
    "echom strBefore .'--'. strAfter .'--'. word
    "lPair 转成 dic(相互为key，方便判断)
    let dic = {}
    for lPair in lis
        let dic[lPair[0]] = lPair[1]
        let dic[lPair[1]] = lPair[0]
    endfor
    "NOTE dic 额外增加单向的内容
    let dic['int'] = 'integer'
    let dic['integer'] = '^\d+$'
    "处理单词大小写
    let upCase = modify#upperCase(word)
    let wordFixed = upCase > 0 ? tolower(word) : word "wordFixed 用来调整大小写
    "echom word .' '. wordFixed
    if !has_key(dic,wordFixed) "不在定义列表内
        "echom 'not in dic'
        "aUp → aDown
        if word =~# '[A-Z]'
            let char = ''
            let l = split#byUpper(word)
        else
            let char = matchstr(word, '\c[^a-z]')
            let l = split(word, '\c[^a-z]')
        endif
        for i in range(len(l))
            let upCase = modify#upperCase(l[i])
            let wordFixed = upCase > 0 ? tolower(l[i]) : word "wordFixed 用来调整大小写
            if has_key(dic, wordFixed) "找到匹配
                let res = dic[wordFixed]
                "恢复大小写
                if upCase == 1
                    let res = tolower(res)
                elseif upCase == 2
                    let res = toupper(res)
                elseif upCase == 3
                    let res = substitute(res, '.*', '\L\u&', '')
                endif
                "修改 l
                let l[i] = res
                return join(l, char)
            endif
        endfor
        return word
    else
        let res = dic[wordFixed]
        if upCase == 1
            let res = tolower(res)
        elseif upCase == 2
            let res = toupper(res)
        elseif upCase == 3
            let res = substitute(res, '.*', '\L\u&', '')
        endif
    endif
    return res
    "    execute "normal! ciw" . res
    "call setline(line('.'), strBefore . res . strAfter)
endfunction

"获取字符串的大小写情况
"1为小写
"2为大写
"3为首字母大写
"0为其他情况(strUpper)
function! modify#upperCase(str) abort
    if a:str !~ '\a' "没字母
        return 0
    elseif a:str ==# tolower(a:str)
        return 1
    elseif a:str ==# toupper(a:str)
        return 2
    elseif a:str =~# '\v^\u\l*$'
        return 3
    endif
        return 0
endfunction

"abcUp转成 ['abc', 'Up']
" function! split#byUpper(str) abort
"     let char = '!'
"     let s = substitute(a:str, '\v\C[A-Z]', char.'&', 'g') "大写字母前增加符号用来 split
"     if strcharpart(s, 0, 1) == char | let s = strcharpart(s, 1) | endif
"     return split(s, char)
" endfunction

func! CompileRunGcc()
	exec "w"
	if &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'lua'
		set splitbelow
		:sp
		:term lua %
    elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	endif
endfunc


" w忽略标点 vscode无效
function! JumpToNextWord()
    normal w
    while strpart(getline('.'), col('.')-1, 1) !~ '\w'
        normal w
    endwhile
endfunction
