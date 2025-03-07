class Pokemon < ApplicationRecord
  has_many :pokeballs, dependent: :destroy
  has_many :trainers, through: :pokeballs
  has_one_attached :photo

  # def self.search(search)
  #   if search
  #     Pokemon.find_by(name: search)
  #   else
  #     Pokemon.all
  #   end
  # end
end
