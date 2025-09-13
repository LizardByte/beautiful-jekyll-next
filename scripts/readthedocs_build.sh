#!/usr/bin/env bash
set -e

# From ReadTheDocs
git_sha=${READTHEDOCS_GIT_COMMIT_HASH}
github_url=${READTHEDOCS_GIT_CLONE_URL}

if [[ ${github_url} == git@* ]]; then
  # SSH URL format: git@github.com:user/repo.git
  github_user=$(echo "${github_url}" | cut -d: -f2 | cut -d/ -f1)
  github_repo=$(echo "${github_url}" | cut -d/ -f2 | sed 's/\.git$//')
else
  # HTTPS URL format: https://github.com/user/repo
  github_user=$(echo "${github_url}" | cut -d/ -f4)
  github_repo=$(echo "${github_url}" | cut -d/ -f5 | sed 's/\.git$//')
fi

export PAGES_REPO_NWO="${github_user}/${github_repo}"

echo "git sha: ${git_sha}"
echo "github url: ${github_url}"
echo "github user: ${github_user}"
echo "github repo: ${github_repo}"

gem install bundle
bundle install
echo "baseurl: ${READTHEDOCS_VERSION}" > _config_rtd.yml
echo "_config_rtd.yml:"
cat _config_rtd.yml
echo "_config.yml:"
cat _config.yml

config_files=_config_rtd.yml,_config.yml

bundle exec jekyll build \
  --future \
  --config "${config_files}" \
  --destination "${READTHEDOCS_OUTPUT}html"

echo "Build finished"
echo "Output directory: ${READTHEDOCS_OUTPUT}html"
echo "Listing output directory:"
ls -Ra "${READTHEDOCS_OUTPUT}"
