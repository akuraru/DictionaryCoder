Pod::Spec.new do |s|
  s.name             = 'DictionaryCoder'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DictionaryCoder.'

  s.description      = <<-DESC
dictionary to Model object Encoder and Decoder.
                       DESC

  s.homepage         = 'https://github.com/akuraru/DictionaryCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akuraru' => 'akuraru@gmail.com' }
  s.source           = { :git => 'https://github.com/akuraru/DictionaryCoder.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akuraru'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DictionaryCoder/Classes/Dictionary/**/*.swift'
end
