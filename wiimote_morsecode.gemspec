Gem::Specification.new do |s|
  s.name = 'wiimote_morsecode'
  s.version = '0.2.0'
  s.summary = 'Uses a Wiimote to input morse code and publish the ' + 
      'translated text to an SPS broker.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/wiimote_morsecode.rb']
  s.add_runtime_dependency('morsecode', '~> 0.2', '>=0.2.1')
  s.add_runtime_dependency('wiimote_sps', '~> 0.4', '>=0.4.0')
  s.signing_key = '../privatekeys/wiimote_morsecode.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/wiimote_morsecode'
end
