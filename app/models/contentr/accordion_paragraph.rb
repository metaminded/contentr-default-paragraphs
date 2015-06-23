module Contentr
  class AccordionParagraph < Paragraph
    field :panels, type: 'Fixnum'
    field :headers, type: 'Array'
    field :positions, type: 'String'
    field :deleted, type: 'String'

    class Panel < Struct.new(:id, :position, :header, :area_name); end

    def children_area_name(i)
      "#{area_name}-accordion-#{id}-#{i}"
    end

    def max_id
      self.positions  ||= ""
      self.deleted    ||= ""
      ids = self.positions.split(',') | self.deleted.split(',')
      ids.map(&:to_i).max || 0
    end

    def panels_each &block
      self.headers ||= { 0 => "Neuer Eintrag" }
      hh = headers
      pp = positions.present? \
         ? positions.split(',').map(&:to_i)
         : (0..hh.length-1).to_a
      dd = (deleted || '').split(',').map(&:to_i)
      pp.each.with_index do |i, position|
        next if dd.try(:member?, i)
        h = hh.is_a?(Hash) ? hh[i.to_s] : hh[i.to_i]
        yield(Panel.new(i.to_i, position, h, children_area_name(i)))
      end
    end

    def summary
      s = []
      panels_each do |panel| s << panel.header end
      "Akkordeon-Paragraph mit den Überschriften " + s.join("; ")
    end

    def self.cache?
      false
    end
  end
end
