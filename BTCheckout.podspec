#
# Be sure to run `pod lib lint BTCheckout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BTCheckout'
  s.version          = '0.1.0'
  s.summary          = 'Bartab checkout functions'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"
The purpose of this pod is to take a ticket object from a POS, map it onto a url as query parameters, and then deep link with this url to the Bartab app. However, this cocoa pod is at a very early stage of development. It works in the most basic sense and this example gets the point across as to what it takes to integrate the Bartab checkout method into any POS. That being said there will be testing and refactoring in the near future."
                       DESC

  s.homepage         = 'https://github.com/jsmellz/BTCheckout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jsmellz' => 'jcbssmall@gmail.com' }
  s.source           = { :git => 'https://github.com/jsmellz/BTCheckout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'BTCheckout/Classes/*.swift'
  
  # s.resource_bundles = {
  #   'BTCheckout' => ['BTCheckout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
