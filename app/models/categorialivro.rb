class Categorialivro < ActiveRecord::Base
  attr_accessible :descricao

  validates :descricao, :presence => true

  has_many :livros

end
