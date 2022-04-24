build:
    #!/usr/bin/env bash
    set -euxo pipefail;
    source src/build_formulas.sh;
    rs_version=$(build_formulas);
    git add --all;
    git commit -m "chore: version upgrade - ${rs_version}";
    git push;
