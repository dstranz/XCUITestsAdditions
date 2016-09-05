#
# Be sure to run `pod lib lint XCUITestsAdditions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "XCUITestsAdditions"
  s.version          = "1.1"
  s.summary          = "Convenient methods used for waiting for UI elements"
  s.description      = <<-DESC
    XCUITestsAdditions provides simple methods that may help you in everyday work with XCode UI Tests.
                       DESC

  s.homepage         = "https://github.com/dstranz/XCUITestsAdditions"
  s.license          = 'MIT'
  s.author           = { "Dominique Stranz" => "web@dstranz.me" }
  s.source           = { :git => "https://github.com/dstranz/XCUITestsAdditions.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dstranz'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'XCUITestsAdditions' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'XCTest'
end
