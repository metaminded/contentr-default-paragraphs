module Contentr
  class ImageParagraph < Paragraph

    field :image, uploader: ImageUploader

    def summary
      image
    end

    def self.cache?
      false
    end
  end
end
