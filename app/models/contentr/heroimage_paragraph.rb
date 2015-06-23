module Contentr
  class HeroimageParagraph < Paragraph

    field :description, type: :text
    field :heroimage, uploader: ImageUploader

    def summary
      description
    end

    def self.cache?
      false
    end
  end
end
