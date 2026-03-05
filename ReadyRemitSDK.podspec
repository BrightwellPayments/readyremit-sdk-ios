Pod::Spec.new do |s|
  s.name             = 'ReadyRemitSDK'
  s.version          = '10.0.0'
  s.summary          = 'Cross-border payouts, remittances & disbursements made easy'
  
  s.description      = <<-DESC
    ReadyRemit is designed to help you capture more revenue by quickly and
    seamlessly integrating global remittances into your product via API or SDK.
    ReadyRemit takes care of the heavy lifting by forming partnerships, building infrastructure,
    and navigating the complex compliance and regulatory requirements needed.
  DESC

  s.homepage         = 'https://www.brightwell.com/readyremit'
  s.license          = { :type => 'Proprietary', :text => 'Copyright Brightwell, LLC. All rights reserved.' }
  s.author           = { 'Brightwell' => 'contact@brightwell.com' }
  
  s.source           = {
    :git => 'https://github.com/BrightwellPayments/readyremit-sdk-ios.git',
    :tag => s.version.to_s
  }

  s.platform         = :ios, '16.0'
  s.swift_version    = '5.9'

  s.prepare_command = <<-CMD
    set -e
    BASE='https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/#{s.version}'
    curl -fSL -o ReadyRemitSDK.xcframework.zip "${BASE}/ReadyRemitSDK.xcframework.zip"
    curl -fSL -o VisaSensoryBranding.xcframework.zip "${BASE}/VisaSensoryBranding.xcframework.zip"
    unzip -o -q ReadyRemitSDK.xcframework.zip
    unzip -o -q VisaSensoryBranding.xcframework.zip
  CMD

  s.vendored_frameworks = [
    'ReadyRemitSDK.xcframework',
    'VisaSensoryBranding.xcframework'
  ]
end
