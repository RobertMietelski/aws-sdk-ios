BASE_DIR=$1

if [ ! $BASE_DIR ]; then
    echo "Usage $0 <path to git checkout of aws-sdk-ios>"
    exit 1
fi

cd $BASE_DIR

if [ ! -d AWSiOSSDKv2.xcodeproj ]; then

    echo "AWSiOSSDKv2.xcodeproj not found in $BASE_DIR"
    exit 2

fi

find . -name "*.podspec" -exec sed -i '' 's/s.platform     = :ios,/s.tvos.deployment_target =/g' {} +
find . -name "*.podspec" -exec sed -i '' 's/aws-sdk-ios.git/aws-sdk-tvos.git/g' {} +
find . -name "*.podspec" -exec sed -i '' 's/\/aws\//\/RobertMietelski\//g' {} +

git mv AWSiOSSDKv2.xcodeproj AWStvOSSDKv2.xcodeproj

cd AWStvOSSDKv2.xcodeproj

sed -i '' 's/amazonaws.sdk.ios/amazonaws.sdk.tvos/g' project.pbxproj
sed -i '' 's/IPHONEOS_DEPLOYMENT_TARGET = 8.0;/TVOS_DEPLOYMENT_TARGET = 9.0; TARGETED_DEVICE_FAMILY = 3;SDKROOT = appletvos;/g' project.pbxproj
sed -i '' 's/iphoneos/appletvos/g' project.pbxproj
sed -i '' 's/\$(ARCHS_STANDARD)/x86_64/g' project.pbxproj
sed -i '' 's/armv7s/arm64/g' project.pbxproj

sed -i '' 's/AWSiOSSDKv2/AWStvOSSDKv2/g' ./project.xcworkspace/contents.xcworkspacedata ./xcshareddata/xcschemes/*
