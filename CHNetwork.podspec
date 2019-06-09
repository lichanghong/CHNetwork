#
# Be sure to run `pod lib lint CHNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHNetwork'
  s.version          = '0.1.0'
  s.summary          = 'CHNetwork是对XMNetWorking的上层封装，基于AFN，XM更好的分层管理了各项功能'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  CHNetwork是对XMNetWorking的上层封装，基于AFN，XM更好的分层管理了各项功能，通过修改XMEngin可以方便直接替换为其他库
                       DESC

  s.homepage         = 'https://github.com/1211054926@qq.com/CHNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1211054926@qq.com' => 'f27_100008550770_yongsheng@git.cloud.tencent.com' }
  s.source           = { :git => 'https://github.com/1211054926@qq.com/CHNetwork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CHNetwork/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CHNetwork' => ['CHNetwork/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'XMNetworking', '~> 1.1.0'

end
