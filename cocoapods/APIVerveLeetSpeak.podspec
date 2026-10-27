Pod::Spec.new do |s|
  s.name             = 'APIVerveLeetSpeak'
  s.version          = '1.2.3'
  s.summary          = 'Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words.'
  s.description      = <<-'DESC'
Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words. Submit any string with an encode or decode mode to receive the converted text and a count of changed characters.

This iOS/macOS SDK provides a convenient way to access the Leet Speak from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/leetspeak?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/leetspeak-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveLeetSpeak/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
