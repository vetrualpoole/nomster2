class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name, presence: true
    validates :address, presence: true
    validates :description, presence: true, length: { minimum: 3 }
    
end

# >> p = Place.new
# # => #<Place id: nil, name: nil>
# >> p.errors.messages
# # => {Oops! You forgot something.}
 
# >> p.valid?
# # => false
# >> p.errors.messages
# # => {name:["Oops! You forgot something."]}
 
# >> p = Place.create
# # => #<Place id: nil, name: nil>
# >> p.errors.messages
# # => {name:["Oops! You forgot something."]}
 
# >> p.save
# # => false
 
# >> p.save!
# # => ActiveRecord::RecordInvalid: Validation failed: Oops! You forgot to enter the name.
 
# >> Place.create!
# # => ActiveRecord::RecordInvalid: Validation failed: Oops! You forgot to enter the name.
