class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates_inclusion_of :rating => 0..5
    validates :category => ["chinese", "italian", "japanese", "french", "belgian"]
end
