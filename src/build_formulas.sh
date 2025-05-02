#!/usr/bin/env bash

function build_formulas () {
  local mkdir_bin cat_bin sed_bin;
  local jq_bin;
  local json_var;
  local rs_daily_url rs_daily_hash rs_version;
  local template_path formula_name;
  formula_name='rstudio-daily-electron';
  template_path="templates/${formula_name}.rb";
  jq_bin="$(builtin command which 'jq')";
  sed_bin="$(builtin command which 'sed')";
  cat_bin="$(builtin command which 'cat')";
  mkdir_bin="$(builtin command which 'mkdir')";

  json_var=$(
    curl -L -s -S -f https://dailies.rstudio.com/rstudio/latest/index.json
  );
  rs_daily_url=$(
    \builtin echo "${json_var}" \
      | "${sed_bin}" 's|, }| }|g' \
      | "${jq_bin}" '.products.electron.platforms.macos.link | values' \
      | "${sed_bin}" 's|\"||g'
  );
  rs_daily_hash=$(
    builtin echo "${json_var}" \
      | "${sed_bin}" 's|, }| }|g' \
      | "${jq_bin}" '.products.electron.platforms.macos.sha256 | values' \
      | "${sed_bin}" 's|\"||g'
  );
  rs_version=$(
    builtin echo "${json_var}" \
      | "${sed_bin}" 's|, }| }|g' \
      | "${jq_bin}" '.products.electron.platforms.macos.version | values' \
      | "${sed_bin}" 's|\"||g'
  );
  if [[ ! -d Casks ]]; then
    "${mkdir_bin}" -p Casks;
  fi
  "${cat_bin}" "${template_path}" \
    | "${sed_bin}" "s|<<<RS_VERSION>>>|${rs_version}|g" \
    | "${sed_bin}" "s|<<<RS_URL>>>|${rs_daily_url}|g" \
    | "${sed_bin}" "s|<<<RS_SHA>>>|${rs_daily_hash}|g" \
    > "Casks/${formula_name}.rb";
  builtin echo -ne "${rs_version}";
}
