#
#  Be sure to run `pod spec lint RHCordova.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  spec.name         = "RHCordova"
  spec.version      = "0.0.1"
  spec.summary      = "RHCordova."
  spec.homepage     = "https://github.com/JiaZiQuan/RHCordova-ios-master.git"
  spec.license      = { :type => "Apache 2.0", :file => "LICENSE" }
  spec.author             = { "JiaZiQuan" => "853453714@qq.com" }
  spec.platform     = :ios, "11.0"
  spec.source       =  { :git => "https://github.com/JiaZiQuan/RHCordova-ios-master.git", :tag => "0.0.1"}
  spec.requires_arc = true   
  spec.preserve_paths = 'CordovaLib/cordova.js', 'CordovaLib/VERSION'       
  spec.frameworks = 'Photos', 'CoreServices', 'AVFoundation', 'CoreLocation'
  spec.default_subspec  = 'RHCordova'
  spec.subspec 'RHCordova' do |cordova|
      cordova.source_files = 'CordovaLib/Classes/**/*.{h,m}', 'CordovaLib/Cordova/Cordova.h'
      cordova.public_header_files = 'CordovaLib/Classes/Public/CDV.h', 'CordovaLib/Classes/Public/CDVAppDelegate.h', 'CordovaLib/Classes/Public/CDVAvailability.h', 'CordovaLib/Classes/Public/CDVAvailabilityDeprecated.h', 'CordovaLib/Classes/Public/CDVCommandDelegate.h', 'CordovaLib/Classes/Public/CDVCommandDelegateImpl.h', 'CordovaLib/Classes/Public/CDVCommandQueue.h', 'CordovaLib/Classes/Public/CDVConfigParser.h', 'CordovaLib/Classes/Public/CDVInvokedUrlCommand.h', 'CordovaLib/Classes/Public/CDVPlugin+Resources.h', 'CordovaLib/Classes/Public/CDVPlugin.h', 'CordovaLib/Classes/Public/CDVPluginResult.h', 'CordovaLib/Classes/Public/CDVScreenOrientationDelegate.h', 'CordovaLib/Classes/Public/CDVTimer.h', 'CordovaLib/Classes/Public/CDVViewController.h', 'CordovaLib/Classes/Public/CDVWebViewEngineProtocol.h', 'CordovaLib/Classes/Private/Plugins/CDVWebViewEngine/CDVWebViewUIDelegate.h', 'CordovaLib/Classes/Public/CDVWhitelist.h', 'CordovaLib/Cordova/Cordova.h', 'CordovaLib/Classes/Public/NSDictionary+CordovaPreferences.h', 'CordovaLib/Classes/Public/NSMutableArray+QueueAdditions.h'
      cordova.prefix_header_contents = ''
  end
end

#
# ATTENTION: 
#
# This file needs to be updated manually whenever a Cordova upgrade that bumps up min version of iOS is performed.
# The release version number and the list of public headers are automatically updated through scipts.
# Sections that need to be updated:
#   1. {s.platform} should be updated if the minimum version of iOS has changed.
#
