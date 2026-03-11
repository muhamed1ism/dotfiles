return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = function(opts)
      -- Direct path approach
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
      local lombok_path = mason_path .. "/lombok.jar"

      -- Check if lombok.jar exists
      if vim.fn.filereadable(lombok_path) == 1 then
        local jvmArg = "-javaagent:" .. lombok_path
        table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)
      end

      opts.settings = {
        java = {
          eclipse = {
            downloadSources = true,
          },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "~/.asdf/installs/java/openjdk-11.0.2",
              },
              {
                name = "JavaSE-17",
                path = "~/.asdf/installs/java/openjdk-17.0.2",
              },
              {
                name = "JavaSE-21",
                path = "~/.asdf/installs/java/openjdk-21",
              },
            },
          },
          format = {
            enabled = true,
            settings = {
              url = vim.fn.expand("~/Workspace/eclipse-java-google-style.xml"),
              profile = "GoogleStyle",
            },
          },
          inlayHints = {
            parameterNames = {
              enabled = "all",
            },
          },
          maven = {
            downloadSources = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
        },
      }
      return opts
    end,
  },
}
