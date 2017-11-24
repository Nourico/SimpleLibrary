class Book < ApplicationRecord
  has_and_belongs_to_many :users

  def self.search(select, search)
    if search
      if select == 'ISBN'
        where('isbn LIKE ?', "%#{search}%")
      else
        where('name LIKE ?', "%#{search}%")
      end
    else
      all
    end
  end

end
