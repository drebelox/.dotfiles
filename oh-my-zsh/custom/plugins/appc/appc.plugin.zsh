
# Makes a test case project for a jira ticket
function mktcase() {
  cd ~/test_cases
  ti create --name="timob-${1}" --id="timob-${1}" --platform=${2}
  echo "Created test case for [#TIMOB-${1}]"
  cd "timob-${1}"
}