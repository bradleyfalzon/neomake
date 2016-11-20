function! neomake#makers#ft#markdown#EnabledMakers() abort
    let makers = executable('mdl') ? ['mdl'] : ['markdownlint']
    return makers + neomake#makers#ft#text#EnabledMakers()
endfunction

function! neomake#makers#ft#markdown#mdl() abort
    return {
                \ 'errorformat':
                \ '%f:%l: %m'
                \ }
endfunction

function! neomake#makers#ft#markdown#markdownlint() abort
    return {
                \ 'errorformat':
                \ '%f: %l: %m'
                \ }
endfunction

function! neomake#makers#ft#markdown#proselint() abort
    return neomake#makers#ft#text#proselint()
endfunction

function! neomake#makers#ft#markdown#writegood() abort
    return neomake#makers#ft#text#writegood()
endfunction
