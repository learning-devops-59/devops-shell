#!/bin/sh
# From gist at https://gist.github.com/chadmaughan/5889802

# Stash any unstaged changes
git stash -q --keep-index

i# Run the tests with the Gradle wrapper
./gradlew test --daemon

# Store the last exit code in a variable
RESULT=$?

# Unstash the unstashed changes
git stash pop -q

# Return the './gradlew test' exit code
exit $RESULT
# << must have a newline after the above command >>
git push


How to authentication out git hub account from our computer

1) On GitHub account, generate a PAT (personal access token) token  string that contains username and password 
2) Now save that on a notepad ,on your VSCode, run the "git push" couple of times and you'd see the prompt to enter the token
3)That's it and it's an one time effort and from now can publish the code to your repo n number of times.
adding branch test

njhjhfjhfjhgjhfjfjhfjfj jhgjhgfjhgjhgjg
