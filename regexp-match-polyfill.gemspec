# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path('../lib/regexp-match-polyfill/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'regexp-match-polyfill'
  s.version         = RegexpMatchPolyfill::VERSION
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = 'Implements Regexp#match?, String#match? and Symbol#match? in Ruby < 2.4.'
  s.description     = 'Implements Regexp#match?, String#match? and Symbol#match? in Ruby < 2.4.'
  s.homepage        = 'https://github.com/yivo/regexp-match-polyfill'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_development_dependency 'bundler',   '~> 1.7'
  s.add_development_dependency 'rake',      '~> 12.0'
  s.add_development_dependency 'test-unit', '~> 3.2'
end
