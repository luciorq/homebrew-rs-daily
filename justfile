build:
    #!/usr/bin/env bash
    set -euxo pipefail;
    source src/build_formulas.sh;
    build_formulas;
