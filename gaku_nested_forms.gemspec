# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'gaku_nested_forms'
  s.version     = '0.0.1'
  s.summary     = 'Gaku Nested Forms'
  s.description = ''
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Vassil Kalkov'
  s.email             = 'vassilkalkov@gmail.com'
  s.homepage          = 'http://kalkov.github.io'

  s.files = Dir["{lib,vendor}/**/*"] + ["README.md"]
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'
  s.add_dependency 'gaku_forms'
  s.add_dependency 'nested_form'
  s.add_dependency 'client_side_validations'
end
