module Contentr
  class FormgenParagraph < Paragraph
    include ActionView::Helpers

    field :form_id, :type => 'Integer'

    def form
      @_form ||= Formgen::Form.find_by(id: form_id)
    end

    def summary
      if form.present?
        form.title.presence || form.path
      end
    end

    def self.cache?
      false
    end

    def self.cache_key
      currently_visible_paragraph_ids = self.currently_visible.pluck(:id).join
      f = Formgen::Form.select('MAX(updated_at) as upd, COUNT(*) as cnt').to_a.first
      p = FormgenParagraph.reorder(updated_at: :desc).limit(1).pluck(:updated_at).first.to_i
      Digest::MD5.hexdigest("FormgenParagraph#{p}_Formgen_#{f.upd.to_i}_#{f.cnt}_#{currently_visible_paragraph_ids}")
    end
  end
end
