#!/bin/sh
# From gist at https://gist.github.com/chadmaughan/5889802

# Stash any unstaged changes
git stash -q --keep-index

# Run the tests with the Gradle wrapper
./gradlew test --daemon

# Store the last exit code in a variable
RESULT=$?

# Unstash the unstashed changes
git stash pop -q

# Return the './gradlew test' exit code
exit $RESULT
# << must have a newline after the above command >>