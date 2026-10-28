eval "$(/opt/homebrew/bin/brew shellenv)"

typeset -U path fpath

fpath=(
  "${ZDOTDIR}/func"
  "${HOMEBREW_PREFIX}/share/zsh/site-functions"
  $fpath
)

path=(
  "${HOMEBREW_PREFIX}/opt/python@3.14/libexec/bin"
  "${HOMEBREW_PREFIX}/opt/libpq/bin"
  "/opt/netcoredbg"
  "${HOME}/.dotnet/tools"
  "${USER_LIBRARY_DIR}/Python/3.14/bin"
  "${USER_LIBRARY_DIR}/Cargo/bin"
  "${USER_LIBRARY_DIR}/Node/bin"
  $path
)
