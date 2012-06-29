class Grupo < ActiveRecord::Base
  attr_accessible :descricao, :multa
 
  has_many :usuarios
  
  validates :descricao, :presence => true,  :length => { :minimum => 5 }
  validates :descricao, :uniqueness => true

end
