{
  // Use Space as your “leader” key
  "vim.leader": "<space>",

  //———————————————— Normal mode ————————————————
  "vim.normalModeKeyBindingsNonRecursive": [
    // File explorer (:Ex)
    {
      "before": ["<leader>", "p", "v"],
      "commands": ["workbench.view.explorer"]
    },
    // Git (fugitive :Git)
    {
      "before": ["<leader>", "g", "s"],
      "commands": ["workbench.view.scm"]
    },
    // Harpoon-like “quick menu” could map to Quick Open
    {
      "before": ["<C-e>"],
      "commands": ["workbench.action.quickOpen"]
    },
    // LSP: hover
    {
      "before": ["<leader>", "k"],
      "commands": ["editor.action.showHover"]
    },
    // LSP: signature help
    {
      "before": ["<C-k>"],
      "commands": ["editor.action.triggerParameterHints"]
    },
    // LSP: rename
    {
      "before": ["<leader>", "r", "n"],
      "commands": ["editor.action.rename"]
    },
    // LSP: code action
    {
      "before": ["<leader>", "c", "a"],
      "commands": ["editor.action.quickFix"]
    },
    // LSP: add workspace folder
    {
      "before": ["<leader>", "w", "a"],
      "commands": ["workbench.action.addRootFolder"]
    },
    // LSP: remove workspace folder
    {
      "before": ["<leader>", "w", "r"],
      "commands": ["workbench.action.removeRootFolder"]
    },
    // Diagnostics: prev / next
    {
      "before": ["[", "d"],
      "commands": ["editor.action.marker.prev"]
    },
    {
      "before": ["]", "d"],
      "commands": ["editor.action.marker.next"]
    },
    // Open Problems panel
    {
      "before": ["<leader>", "q"],
      "commands": ["workbench.actions.view.problems"]
    },
    // Format document
    {
      "before": ["<leader>", "f"],
      "commands": ["editor.action.formatDocument"]
    },
    // Buffer navigation
    {
      "before": ["<leader>", "b", "p"],
      "commands": ["workbench.action.previousEditor"]
    },
    {
      "before": ["<leader>", "b", "n"],
      "commands": ["workbench.action.nextEditor"]
    },
    {
      "before": ["<leader>", "b", "d"],
      "commands": ["workbench.action.closeActiveEditor"]
    },
    // Window navigation (Ctrl-h/j/k/l)
    {
      "before": ["<C-h>"],
      "commands": ["workbench.action.focusLeftGroup"]
    },
    {
      "before": ["<C-j>"],
      "commands": ["workbench.action.focusBelowGroup"]
    },
    {
      "before": ["<C-k>"],
      "commands": ["workbench.action.focusAboveGroup"]
    },
    {
      "before": ["<C-l>"],
      "commands": ["workbench.action.focusRightGroup"]
    },
    // Telescope-style “find in files”
    {
      "before": ["g", "a"],
      "commands": ["workbench.action.findInFiles"]
    },
    // Git files / find files → Quick Open
    {
      "before": ["g", "f"],
      "commands": ["workbench.action.quickOpen"]
    },
    {
      "before": ["g", "F"],
      "commands": ["workbench.action.quickOpen"]
    },
    // Document symbols
    {
      "before": ["g", "s"],
      "commands": ["workbench.action.gotoSymbol"]
    },
    // References, Implementations, Definitions
    {
      "before": ["g", "r"],
      "commands": ["editor.action.referenceSearch.trigger"]
    },
    {
      "before": ["g", "i"],
      "commands": ["editor.action.goToImplementation"]
    },
    {
      "before": ["g", "d"],
      "commands": ["editor.action.revealDefinition"]
    }
  ],

  //———————————————— Visual mode ————————————————
  "vim.visualModeKeyBindingsNonRecursive": [
    // Move lines down/up
    {
      "before": ["J"],
      "commands": ["editor.action.moveLinesDownAction"]
    },
    {
      "before": ["K"],
      "commands": ["editor.action.moveLinesUpAction"]
    }
  ],

  //———————————————— Insert mode ————————————————
  "vim.insertModeKeyBindingsNonRecursive": [
    // Ctrl-c to Esc
    {
      "before": ["<C-c>"],
      "after": ["<Esc>"]
    },
    // Completion navigation to VSCode’s default (you get arrow keys & <C-Space> already)
    {
      "before": ["<C-p>"],
      "commands": ["selectPrevSuggestion"]
    },
    {
      "before": ["<C-n>"],
      "commands": ["selectNextSuggestion"]
    },
    {
      "before": ["<C-y>"],
      "commands": ["acceptSelectedSuggestion"]
    },
    {
      "before": ["<C-Space>"],
      "commands": ["editor.action.triggerSuggest"]
    }
  ]
}