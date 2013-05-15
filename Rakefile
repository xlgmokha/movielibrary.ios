task :xcode do
  system "open *.xcworkspace"
end

task :clean do
  system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests clean"
end

task :build => :clean do
  system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests build 2>&1"
end

task :test => :build do
  #system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests RUN_APPLICATION_TESTS_WITH_IOS_SIM=YES clean build"
  system "xcodebuild -sdk iphonesimulator -workspace MovieLibrary.xcworkspace -scheme Pods-MovieLibraryTests -configuration Release RUN_APPLICATION_TESTS_WITH_IOS_SIM=YES ONLY_ACTIVE_ARCH=NO TEST_AFTER_BUILD=YES TEST_HOST='' clean build 2>&1"
end
