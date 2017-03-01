#!/bin/sh

# Release checklist
#
# 0. Check on DBApp, Chime, Paper. Run analyzer.
# 1. Make sure test data is reset
# 2. Run generator
# 3. Check test project, run unit tests
# 4. Check pod spec lint
# 5. Increment version with script
# 6. Update Carthage example project
# 7. Push to CocoaPods
#

cat TestObjectiveDropbox/IntegrationTests/TestData.m

# python generate_base_client.py

# pod spec lint
