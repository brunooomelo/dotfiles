
## keymaps

```help
`K`, `J` - keep cursor centered when scrolling
`<leader>w` - save file
`<leader>q - close file
`<`,`>` - better indenting
`jj`, `jk` - exit on jj and jk
`L` - move to end of line
`H` - move to start of line
`tk` - navigate the next buffer
`tj` - navigate the previous buffer
`th` - navigate the first buffer
`tl` - navigate the last buffer
`td` - delete buffer
`ss` - remove highlight
```

## LSP

- NORMAL MODE
```help
 
`gR` - Show LSP references
`gD` - Go to declaration
`gd` - Show LSP definitions
`gi` - Show LSP implementations
`gt` - Show LSP type definitions
`<leader>ca` - See available code actions
`<leader>rn` - Smart rename
`<leader>D` - Show buffer diagnostics
`[d` - Go to previous diagnostic
`]d` - Go to next diagnostic
`K` - Show documentation for what is under cursor
`<leader>rs` - Restart LSP
`<leader>l` - try linting
`<leader>mp - format code
```
- VIRTUAL MODE
```help
`<leader>ca` - See available code actions
```

## comment.nvim

#### Basic mappings

These mappings are enabled by default. (config: `mappings.basic`)

- NORMAL mode

```help
`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
```

- VISUAL mode

```help
`gc` - Toggles the region using linewise comment
`gb` - Toggles the region using blockwise comment
```

<a id="extra-mappings"></a>

#### Extra mappings

These mappings are enabled by default. (config: `mappings.extra`)

- NORMAL mode

```help
`gco` - Insert comment to the next line and enters INSERT mode
`gcO` - Insert comment to the previous line and enters INSERT mode
`gcA` - Insert comment to end of the current line and enters INSERT mode
```

##### Examples

```help
# Linewise

`gcw` - Toggle from the current cursor position to the next word
`gc$` - Toggle from the current cursor position to the end of line
`gc}` - Toggle until the next blank line
`gc5j` - Toggle 5 lines after the current cursor position
`gc8k` - Toggle 8 lines before the current cursor position
`gcip` - Toggle inside of paragraph
`gca}` - Toggle around curly brackets

# Blockwise

`gb2}` - Toggle until the 2 next blank line
`gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
`gbac` - Toggle comment around a class (w/ LSP/treesitter support)
```


### vim-maximizer

```help
`<leader>sm` - Toggle maximizer
```
