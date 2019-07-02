class Author < ActiveRecord::Base
<<<<<<< HEAD
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :phone_number, length: {is: 10}
=======
  validates :name, presence:true, uniqueness:true
  validates :phone_number, length: { is: 10 }


>>>>>>> c78fe666b48f58fdbcc480bf6218dff3ca59fc99
end
