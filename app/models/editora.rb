class Editora < ActiveRecord::Base
  attr_accessible :cnpj, :razao_social

  validates :cnpj, :razao_social, :presence => true
  validates_format_of :cnpj, :with => /^\d{2,3}[.]\d{3}[.]\d{3}[\/]\d{4}[-]\d{2}$/
  validates :cnpj, :razao_social, :uniqueness => true
  
  has_many :livros
end

