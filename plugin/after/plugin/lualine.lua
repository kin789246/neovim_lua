require('lualine').setup {
    options = { theme = 'visual_studio_code' },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 3,
                symbols = {
                    readonly = '[r]',
                }
            }
        }
    }
}
