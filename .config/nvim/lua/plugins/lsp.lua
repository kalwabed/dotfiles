return {
  "neovim/nvim-lspconfig",
  event = "LspAttach",
  opts = {
    servers = {
      volar = {
        filetypes = { "typescript", "javascript", "vue" },
        init_options = {
          vue = {
            hybridMode = false,
          },
        },
      },
      tailwindcss = {
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                "\\/\\*\\s*tw\\s*\\*\\/\\s*[`'\"](.*)[`'\"];?",
                { "(?:twMerge|twJoin)\\(([^\\);]*)[\\);]", "[`'\"]([^'\"`,;]*)[`'\"]" },
                "twc\\`(.*)\\`;?",
                "clsx[`]([\\s\\S][^`]*)[`]",
                { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                "cva[`]([\\s\\S][^`]*)[`]",
                { "cva\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                { "ui:\\s*{([^)]*)\\s*}", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "/\\*\\s?ui\\s?\\*/\\s*{([^;]*)}", ":\\s*[\"'`]([^\"'`]*).*?[\"'`]" },
              },
            },
            classAttributes = {
              "class",
              "className",
              "class:list",
              "classList",
              "ngClass",
              "ui",
            },
          },
        },
      },
    },
  },
  dependencies = {
    -- This plugin needs to be loaded as well otherwise Neovim can't find the LSP binary on $PATH.
    "williamboman/mason.nvim",
  },
}
