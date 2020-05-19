#!/bin/sh -eu

#
#  workspace-prepare.sh
#  LoopWorkspace
#

cd Loop

rm -rf "VersionOverride.xcconfig"
rm -rf "LoopOverride.xcconfig"
rm -rf "Loop/DerivedAssetsOverride.xcassets"
rm -rf "WatchApp/DerivedAssetsOverride.xcassets"

ln -s "../VersionOverride.xcconfig" "VersionOverride.xcconfig"
ln -s "../LoopOverride.xcconfig" "LoopOverride.xcconfig"
ln -s "../../DerivedAssetsOverride.xcassets" "Loop/DerivedAssetsOverride.xcassets"
ln -s "../../DerivedWatchAssetsOverride.xcassets" "WatchApp/DerivedAssetsOverride.xcassets"

"Scripts/build-derived-assets.sh" "Loop" &> /dev/null
"Scripts/build-derived-assets.sh" "WatchApp" &> /dev/null
