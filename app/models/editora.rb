class Editora < ActiveRecord::Base
  attr_accessible :cnpj, :razao_social

  validates :cnpj, :razao_social, :presence => true
  validates :cnpj, :razao_social, :uniqueness => true
  
  validates_format_of :cnpj, :with => /^\d{2,3}[.]\d{3}[.]\d{3}[\/]\d{4}[-]\d{2}$/,
  :message => "inválido. Utilize o formato: 000.000.000/0000-00"
  
  has_many :livros
end

