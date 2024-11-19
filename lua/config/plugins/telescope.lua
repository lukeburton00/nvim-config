return {
    {"nvim-telescope/telescope.nvim", tag = "0.1.5"},
    {'nvim-telescope/telescope-fzf-native.nvim', name = 'fzf', build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"},

    dependencies = {
        "nvim-lua/plenary.nvim"
    },
}
