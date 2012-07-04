class Usuario < ActiveRecord::Base
  belongs_to :grupo
  has_many :locacao
  attr_accessible :grupo_id, :endereco, :matricula, :nome, :telefone, :senha, :senha_confirmation

  validates :endereco, :matricula, :nome, :telefone, :grupo, :senha, :presence =>true
  validates :matricula, :uniqueness => true
  validates :senha, :presence =>true,
                    :length => { :minimum => 5, :maximum => 10 }
  validates_confirmation_of :senha
  validates_numericality_of :matricula, :only_integer => true
	

  validates_length_of :matricula, :is => 9

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
