export NVM_VERSION=

brew install 1password
brew install postgresql
brew install rbenv ruby-build
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

nvm install 16.13.0
nvm use

npm install -g yarn
yarn install --check-files

gem install bundler --conservative

# Code format and linting
# rubocop

# javascript/typescript
yarn add --dev --exact prettier
yarn add eslint --dev
yarn add --dev eslint-config-prettier

# for Sorbet type checking
brew install watchman
