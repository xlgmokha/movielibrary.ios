task :xcode do
  system "open *.xcworkspace"
end

task :clean do
  system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests clean"
end

task :build => :clean do
  system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests build 2>&1"
end

task :spec => :build do
  system "xctool -workspace MovieLibrary.xcworkspace -scheme MovieLibrary test TEST_AFTER_BUILD=YES TEST_HOST=''"
end
