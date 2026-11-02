# Homepage

To run:
- `bundix -l`
- `nix-shell`
- `bundle exec jekyll serve --config _config.yml,_config-dev.yml`
- `nix-shell --run "bundle exec jekyll serve --config _config.yml,_config-dev.yml"`
- or `bundle exec jekyll build`

To update from upstream:
- `git merge --no-ff upstream/gh-pages`

Update deps: nix-shell -p bundler bundix --run 'bundle lock --update && bundix'
Local build: nix-shell --run 'bundle exec jekyll serve --config _config.yml,_config-dev.yml'
