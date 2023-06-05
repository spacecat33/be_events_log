class Event < ApplicationRecord
    has_many :attendees, dependent: :destroy

    validates(:title, { :length => { :minimum => 2 } })
    validates :title, uniqueness: true, presence: true  
    
    before_save :make_title_case

    private

    def make_title_case
        # Rails provides a String#titlecase method
        self.title = self.title.titlecase
    end

end
