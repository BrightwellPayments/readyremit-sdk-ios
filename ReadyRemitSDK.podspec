Pod::Spec.new do |s|
    s.name             = 'ReadyRemitSDK'
    s.version          = '8.1' # Atualize para a versão correta
    s.summary          = 'Cross-border payouts, remittances & disbursements made easy'
    s.description      = <<-DESC
      ReadyRemit is designed to help you capture more revenue by quickly and
      seamlessly integrating global remittances into your product via API or SDK.
      ReadyRemit takes care of the heavy lifting by forming partnerships, building infrastructure,
      and navigating the complex compliance and regulatory requirements needed.
    DESC
    s.homepage         = 'https://www.brightwell.com/readyremit'
    s.license          = { :type => 'Proprietary', :file => 'LICENSE' }
    s.author           = { 'Brightwell' => 'contact@brightwell.com' }
    s.source           = { :http => '' }
  
    s.platform     = :ios, '15.0'
  
    # Inclua os frameworks binários
    s.vendored_frameworks = [
      'ReadyRemitSDK.xcframework',
      'VisaSensoryBranding.xcframework'
    ]
  
    # Dependências
    s.dependency 'Swinject', '2.9.1'


  end
  