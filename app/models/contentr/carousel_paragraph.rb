class Contentr::CarouselParagraph < Contentr::Paragraph

  N = 6
  (1..N).each do |i|
    field :"title#{i}", type: :text
    field :"link#{i}", type: :text
    field :"image#{i}", uploader: ImageUploader
  end

end
