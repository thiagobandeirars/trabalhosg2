class Usuario < ActiveRecord::Base
  belongs_to :grupo
  attr_accessible :grupo_id, :endereco, :matricula, :nome, :telefone

  validates :endereco, :matricula, :nome, :telefone, :grupo, :presence =>true
  validates :matricula, :uniqueness => true
end
