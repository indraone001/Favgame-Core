#
# Be sure to run `pod lib lint Favgame-Core.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Favgame-Core'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Favgame-Core.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/indraone001/Favgame-Core'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'indraone001' => 'deri.indrawan@dwidasa.com' }
  s.source           = { :git => 'https://github.com/indraone001/Favgame-Core.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Favgame-Core/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Favgame-Core' => ['Favgame-Core/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire'
  s.dependency 'Kingfisher', '~> 7.0'
  s.dependency 'SwiftLint'
  s.dependency 'RealmSwift', '~>10'
  s.dependency 'Swinject'
  s.dependency 'SkeletonView'
  s.dependency 'IQKeyboardManagerSwift'
end
