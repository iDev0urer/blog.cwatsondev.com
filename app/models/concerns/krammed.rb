module Krammed
  extend ActiveSupport::Concern

  module ClassMethods

    require 'kramdown'

    def kram(field)
      define_method("#{field}_markdown".to_sym) do
        read_attribute(field)
      end

      define_method("#{field}_html".to_sym) do
        Kramdown::Document.new(read_attribute(field)).to_html
      end
    end

  end

end