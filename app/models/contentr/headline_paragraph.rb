# coding: utf-8
module Contentr
  class HeadlineParagraph < Paragraph
    COLORS = { 'Schwarz' => :black, 'Grau' => :grey, 'Blau' => :blue}
    LEVELS = {
      'Hauptüberschrift' => 1,
      'Unterüberschrift Ebene 2' => 2,
      'Unterüberschrift Ebene 3' => 3
    }

    field :headline, type: :string
    field :color, type: :string
    field :level, type: :string

    def summary()
      lvl = LEVELS.find{|l,i| i.to_s == level.to_s}.try(:first)
      "#{lvl}: #{headline.presence || '—'} (#{color.presence || '—'})"
    end
  end
end
