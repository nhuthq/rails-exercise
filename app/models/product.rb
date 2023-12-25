class Product < ActiveRecord::Base

    belongs_to :category

    scope :published, -> { where(published: true) }
    scope :price_more_than, -> (price) { where('price  > ?', 10) }
    scope :description_included, -> (text) { where('description like ?', "%#{text}%") }

    before_save :title_lower_case
    before_save :strip_html_from_description

    validate :title_shorter_than_description
    validates :title, :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }

    def title_lower_case
        self.title.downcase!
    end

    def title_shorter_than_description
        return if title.blank? or description.blank?
        if description.length < title.length
            error.add(:description, `can not be shorter than title`)
        end
    end

    def strip_html_from_description
        self.description = ActionView::Base.full_sanitizer.sanitize(self.description)

    end
end
