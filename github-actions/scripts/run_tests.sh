#!/bin/bash
# Run your tests here
npm test  # or any other test command

# Check the exit status of the test command
if [ $? -ne 0 ]; then
  echo "Tests failed!"
  exit 1
fi
