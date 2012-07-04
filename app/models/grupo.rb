class Grupo < ActiveRecord::Base
  attr_accessible :descricao, :multa
 
  has_many :usuarios
  
  validates :descricao, :presence => true,  :length => { :minimum => 5 }
  validates :descricao, :uniqueness => true
  
  #Valida no Formato 00.00
  validates_format_of :multa, :with => /^[0-9][0-9]?(\.[0-9][0-9]?)$/,
  :message => "inválido. Utilize o formato: 00.00 ou 0.0"

end

# 
#
