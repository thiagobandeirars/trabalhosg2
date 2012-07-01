class Editora < ActiveRecord::Base
  attr_accessible :cnpj, :razao_social

  validates :cnpj, :razao_social, :presence => true
 # validates_format_of :cnpj => '^\d{3}.?\d{3}.?\d{3}/?\d{3}-?\d{2}$', :on => :new

  has_many :livros
end
