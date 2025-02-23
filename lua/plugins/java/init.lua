return {
  "nvim-java/nvim-java",
  config = false,
  lazy = true,
  enable = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              root_markers = {
                "settings.gradle",
                "pom.xml",
                "build.gradle",
                "mvnw",
                "gradlew",
                "build.gradle",
              },
              -- load java debugger plugins
              java_debug_adapter = {
                enable = false,
              },
              notifications = {
                -- enable 'Configuring DAP' & 'DAP configured' messages on start up
                dap = false,
              },
              -- load java test plugins
              java_test = {
                enable = false,
              },
            })
          end,
        },
      },
    },
  },
}
