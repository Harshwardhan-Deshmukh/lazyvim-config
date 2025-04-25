return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = {
      handlers = {
        ["language/status"] = function(_, _)
          -- completely ignore status messages
        end,
        ["$/progress"] = function(_, _, _)
          -- completely ignore progress updates
        end,
      },
    },
  },
}
