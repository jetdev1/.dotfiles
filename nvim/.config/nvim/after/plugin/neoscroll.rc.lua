local neoscroll_avail, neoscroll_config = pcall(require, "neoscroll.config")
if neoscroll_avail then
  neoscroll_config.set_mappings {
    -- Syntax: [keys] = {function, {function arguments}}
        ["<C-u>"] = { "scroll", { "-0.4", "true", "200", [['quadratic']] } },
        ["<C-d>"] = { "scroll", { "0.4", "true", "200", [['quadratic']] } },
}
end
