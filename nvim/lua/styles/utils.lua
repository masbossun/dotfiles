function CreateHi(v)
    Hi = "highlight " .. v.group
    if v.ctermbg then Hi = Hi .. " ctermbg=" .. v.ctermbg end
    if v.ctermfg then Hi = Hi .. " ctermfg=" .. v.ctermfg end
    if v.guibg then Hi = Hi .. " guibg=" .. v.guibg end
    if v.guifg then Hi = Hi .. " guifg=" .. v.guifg end

    return Hi
end

return CreateHi
