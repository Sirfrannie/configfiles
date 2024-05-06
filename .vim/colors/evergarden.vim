set background=dark
highlight clear
syntax reset

let g:colors_name="evergarden"

hi Boolean          ctermbg=NONE        ctermfg=1
hi Character        ctermbg=NONE        ctermfg=10
hi String           ctermbg=NONE        ctermfg=10
hi Number           ctermbg=NONE        ctermfg=170
hi Float            ctermbg=NONE        ctermfg=170
hi Constant         ctermbg=NONE        ctermfg=9

hi Identifier       ctermbg=NONE        ctermfg=11      
hi Function         ctermbg=NONE        ctermfg=13      

hi Statement        ctermbg=NONE        ctermfg=83      
hi Conditional      ctermbg=NONE        ctermfg=51      
hi Repeat           ctermbg=NONE        ctermfg=46      
hi Label            ctermbg=NONE        ctermfg=48      
hi Operator         ctermbg=NONE        ctermfg=48      
hi Keyword          ctermbg=NONE        ctermfg=48      
hi Exception        ctermbg=NONE        ctermfg=28      

hi Type             ctermbg=NONE        ctermfg=119     
hi StorageClass     ctermbg=NONE        ctermfg=212     
hi Structure        ctermbg=NONE        ctermfg=164     
hi Typedef          ctermbg=NONE        ctermfg=164     

hi PreProc          ctermbg=NONE        ctermfg=168     
hi Include          ctermbg=NONE        ctermfg=163     
hi link Define Include       
hi PreCondit        ctermbg=NONE        ctermfg=168     

hi Special          ctermbg=NONE        ctermfg=143     
hi SpecialChar      ctermbg=NONE        ctermfg=139     

hi Underlined       ctermbg=NONE        ctermfg=10     
hi Todo             ctermbg=153         ctermfg=16     cterm=bold       
hi Comment          ctermbg=NONE        ctermfg=38     cterm=italic

hi TabLineFill      ctermbg=242         ctermfg=242
hi TabLine          ctermbg=89          ctermfg=79     cterm=bold
hi TabLineSel       ctermbg=96          ctermfg=80     cterm=bold
