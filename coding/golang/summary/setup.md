## Setup

Installing go with homebrew:

```bash
brew install go --cross-compile-common
```

Create a workspace:

```bash
mkdir $HOME/go
export GOPATH=$HOME/go
```

Setting up bash_profile:

```bash
open $HOME/.bash_profile

# Inside .bash_profile

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```
