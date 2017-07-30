# encoding: UTF-8
# frozen_string_literal: true

Bundler.require :default, :development

class RegexpMatchPolyfillTest < Test::Unit::TestCase
  def test_regexp_match
    assert_true(/foo/.match?('foo'))
    assert_false(/bar/.match?('foo'))
  end

  def test_string_match
    assert_true 'foo'.match?(/foo/)
    assert_false 'foo'.match?(/bar/)
  end

  def test_symbol_match
    assert_true :foo.match?(/foo/)
    assert_false :foo.match?(/bar/)
  end
end
