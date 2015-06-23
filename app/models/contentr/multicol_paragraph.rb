module Contentr
  class MulticolParagraph < Paragraph

    field :wrapper_class, type: :string


    field :col1_class, type: :string
    field :col2_class, type: :string
    field :col3_class, type: :string
    field :col4_class, type: :string
    field :col5_class, type: :string
    field :col6_class, type: :string

    def children_area_name(i)
      "#{area_name}-multicol-#{id}-#{i}"
    end

    def col_class(i)
      self.send("col#{i}_class").presence
    end

    def summary
      n = (1..6).select{|i| col_class(i)}.length
      "#{n} Spalten."
    end

    def self.cache?
      false
    end
  end
end
