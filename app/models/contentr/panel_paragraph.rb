module Contentr
  class PanelParagraph < Paragraph
    field :title, type: :string
    field :content, type: :text

    def summary
      title
    end

    def self.cache?
      false
    end
  end
end
