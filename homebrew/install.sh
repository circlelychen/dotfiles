#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install packages
    apps=(
        ag
        bash-completion2
        cmake
        git
        grep
        jq
        yq
        wget
    )
    brew install "${apps[@]}"

    # Git comes with diff-highlight, but isn't in the PATH
    #ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
  fi

fi

exit 0
