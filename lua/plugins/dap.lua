return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      vim.keymap.set("n", "<F1>", dap.continue, { desc = "DAP: Continue" })
      vim.keymap.set("n", "<F2>", dap.step_over, { desc = "DAP: Step Over" })
      vim.keymap.set("n", "<F3>", dap.step_into, { desc = "DAP: Step Into" })
      vim.keymap.set("n", "<F4>", dap.step_out, { desc = "DAP: Step Out" })

      vim.keymap.set("n", "<F5>", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
      vim.keymap.set("n", "<F6>", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end, { desc = "DAP: Conditional Breakpoint" })

      vim.keymap.set("n", "<F7>", dap.repl.open, { desc = "DAP: Open REPL" })
      vim.keymap.set("n", "<F8>", dap.run_last, { desc = "DAP: Run Last" })
    end,
  },
}
