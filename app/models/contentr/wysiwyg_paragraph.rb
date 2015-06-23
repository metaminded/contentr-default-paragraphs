# coding: utf-8
module Contentr
  class WysiwygParagraph < Paragraph
    include ActionView::Helpers::SanitizeHelper

    field :body, type: 'text'

    def summary
      summary = strip_tags(self.body)[0..100]
      summary + (self.body.length > 100 ? '...' : '')
    end

    def self.cache?
      false
    end
  end
end
