return {
  "nvim-java/nvim-java",
  config = false,
  lazy = true,
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
            })
          end,
        },
      },
    },
  },
}
