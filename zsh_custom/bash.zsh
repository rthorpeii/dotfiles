alias rubocop-change='bin/rubocop -A $(git diff --name-only master..HEAD)'
alias test-features='TEST_ALL_FEATURES=1 bin/rails test'
alias update-owners='bin/generate-service-files.rb'
