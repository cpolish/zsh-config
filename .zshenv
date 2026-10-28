export USER_LIBRARY_DIR="${HOME}/Library"

export XDG_CONFIG_HOME="${HOME}/.config"

# Azure stuff
export AZURE_COLLECT_TELEMETRY=0
export AZURE_CONFIG_DIR="${XDG_CONFIG_HOME}/azure"

# Dotnet stuff
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"

# Cargo stuff
export CARGO_HOME="${USER_LIBRARY_DIR}/Cargo"

# NPM stuff
export NPM_CONFIG_USERCONFIG="${USER_LIBRARY_DIR}/Node/npmrc"

# AWS stuff
export SAM_CLI_TELEMETRY=0

# TexLive stuff
export TEXMFCONFIG="${USER_LIBRARY_DIR}/Application Support/texmf"
export TEXMFHOME="${USER_LIBRARY_DIR}/Application Support/texmf"

# gh stuff
export GH_TELEMETRY=false

# Hugging Face stuff
export HF_HUB_DISABLE_TELEMETRY=1
export HF_HUB_DISABLE_IMPLICIT_TOKEN=1
if [[ -r "${XDG_CONFIG_HOME}/huggingface/.hf-env" ]]
then
    source "${XDG_CONFIG_HOME}/huggingface/.hf-env"
fi

# Terraform stuff
export CHECKPOINT_DISABLE=1
