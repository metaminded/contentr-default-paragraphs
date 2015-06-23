# Possible Configuration
```
config.register_paragraph(Contentr::AccordionParagraph, 'Akkordeon', position: x)
config.register_paragraph(Contentr::BigImageParagraph, 'Großes Bild', position: x)
config.register_paragraph(Contentr::CarouselParagraph, 'Carousel', position: x)
config.register_paragraph(Contentr::FormgenParagraph, 'Formular', position: x)
config.register_paragraph(Contentr::HeadlineParagraph, 'Überschrift', position: x)
config.register_paragraph(Contentr::HeroimageParagraph, 'Hero-Image', position: x)
config.register_paragraph(Contentr::HtmlParagraph, 'HTML', position: x)
config.register_paragraph(Contentr::ImageParagraph, 'Image (Content)', position: x)
config.register_paragraph(Contentr::MulticolParagraph, 'Spalten', position: x)
config.register_paragraph(Contentr::PanelParagraph, 'Panel', position: x)
config.register_paragraph(Contentr::PlainBlockParagraph, 'Leerer Block', position: x)
config.register_paragraph(Contentr::WysiwygParagraph, 'Text mit Bild', position: x)
```

# Requirements
## WYSIWYG
The WYSIWYG Paragraph requires a WYSIWYG Editor to be installed in your project.
You can configure it by configure `config.wysiwyg_editor = 'foobar'`.
The paragraph will call the method `activateFoobar`, so you can initialize your editor in javascript.
