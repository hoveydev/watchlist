#!/bin/bash

# install jq
echo "Installing JQ..."
brew install jq

RESULT_BUNDLE="CodeCoverage.xcresult"
RESULT_JSON="CodeCoverage.json"

# clean files
echo "Cleaning files..."
if [ -d $RESULT_BUNDLE ]; then
    rm -rf $RESULT_BUNDLE
fi
if [ -f $RESULT_JSON ]; then
    rm $RESULT_JSON
fi

# build
echo "Building the project..."
set -o pipefail && env NSUnbufferedIO=YES xcodebuild build-for-testing -scheme WatchList -destination "platform=iOS Simulator,name=iPhone 15 Pro,OS=17.0.1" -enableCodeCoverage YES | xcpretty
# test
echo "Running tests..."
set -o pipefail && env NSUnbufferedIO=YES xcodebuild test-without-building -scheme WatchList -destination "platform=iOS Simulator,name=iPhone 15 Pro,OS=17.0.1" -enableCodeCoverage YES -resultBundlePath $RESULT_BUNDLE | xcpretty


# convert xcresult to json
echo "Converting XCResult to JSON..."
xcrun xccov view --report --json $RESULT_BUNDLE > $RESULT_JSON

# set minimum code coverage threshold
COVERAGE_THRESHOLD="80"

CODE_COVERAGE=$(cat $RESULT_JSON | jq '.lineCoverage')
CODE_COVERAGE=$(echo $CODE_COVERAGE*100.0 | bc)

# pass run if coverage is above threshold / fail if not
COVERAGE_PASSES=$(echo "$CODE_COVERAGE > $COVERAGE_THRESHOLD" | bc)
if [ $COVERAGE_PASSES -eq 0 ]; then
    printf "\033[0;31mCode coverage %.1f%% is less than required %.1f%%\033[0m\n" $CODE_COVERAGE
    exit -1
else
    printf "\033[0;32mCode coverage is %.1f%%\033[0m\n" $CODE_COVERAGE
fi
