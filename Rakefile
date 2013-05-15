task :xcode do
  system "open *.xcworkspace"
end

task :build do
  system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme Pods-MovieLibraryTests build"
  #system "xcodebuild -workspace MovieLibrary.xcworkspace/ -sdk iphonesimulator -configuration Debug -scheme MovieLibrary test"
end
