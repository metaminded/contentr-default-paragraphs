# coding: utf-8
module Contentr
  class WysiwygParagraph < Paragraph
    field :body, type: 'text'

    def summary
      'FIXME'
    end

    def self.cache?
      false
    end
  end
end
