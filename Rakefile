task :default => :spec

task :setup do
  system 'brew update'
  system 'brew install xctool'
end

task :xcode do
  system "open *.xcworkspace"
end

task :clean do
  system "xctool clean"
end

task :build do
  system "xctool -scheme Pods-MovieLibraryTests clean build"
end

task :spec do
  system "xctool test TEST_AFTER_BUILD=YES TEST_HOST=''"
end
