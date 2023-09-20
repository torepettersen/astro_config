return {
  cmd = { os.getenv "HOME" .. "/.elixir_ls/language_server.sh" },
  settings = {
    elixirLS = {
      dialyzerEnabled = false,
    },
  },
}
