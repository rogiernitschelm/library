## Packages and imports

The package name is the last element of the import path.

Programs start running in a package named main.

```go
package main

func main() {
  ...
}
```

```go
import "fmt"
import "math/rand"

import (
  "flag"
  "os"
)
```

Getting a package:

```bash
$ go get github.com/mattetti/goRailsYourself/crypto
```

Exported variables and functions start with a capital.

```go
func main() {
  lib.SomeFunc() { ... }
}
```
