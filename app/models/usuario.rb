class Usuario < ActiveRecord::Base
  belongs_to :grupo
  attr_accessible :grupo_id, :endereco, :matricula, :nome, :telefone, :senha

  validates :endereco, :matricula, :nome, :telefone, :grupo, :senha, :presence =>true
  validates :matricula, :uniqueness => true


  def authenticate senha
    if self && self.senha == senha
      self
    else
      nil
    end
  end

  def isAdministrador?
    if self && self.grupo_id == 1
      true
    else
      false
    end
  end

end
