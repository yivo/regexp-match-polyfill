# encoding: UTF-8
# frozen_string_literal: true

unless Regexp.instance_methods.include?(:match?) && String.instance_methods.include?(:match?)
  module RegexpMatchPolyfill
    module RegexpExtension
      def match?(string, position = 0)
        !!(string[position..-1] =~ self)
      end
    end

    module StringExtension
      def match?(regexp, position = 0)
        !!(self[position..-1] =~ regexp)
      end
    end
  end

  Regexp.include RegexpMatchPolyfill::RegexpExtension
  String.include RegexpMatchPolyfill::StringExtension
end
