class Categorialivro < ActiveRecord::Base
  attr_accessible :descricao

  validates :descricao, :presence => true
  validates :descricao, :uniqueness => true
  has_many :livros

end
