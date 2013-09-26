# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'phantom_nested_forms'
  s.version     = '0.1.1'
  s.summary     = 'Phantom Nested Forms'
  s.description = 'rails helpers for bootstrap 3'
  s.licenses = ['GNU GPL-3', 'AGPL-3']
  s.required_ruby_version = '>= 1.8.7'

  s.author            = ['Vassil Kalkov', 'Rei Kagetsuki', 'Nakaya Yukiharu']
  s.email             = 'info@genshin.org'
  s.homepage          = 'http://github.com/Genshin/phantom_nested_forms'

  s.files = Dir["{lib,vendor}/**/*"] + ["README.md"]
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'
  s.add_dependency 'phantom_forms', '~> 0.1.0'
  s.add_dependency 'nested_form'
  s.add_dependency 'rails4_client_side_validations'
end
