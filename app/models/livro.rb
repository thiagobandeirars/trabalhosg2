class Livro < ActiveRecord::Base
  belongs_to :editora
  belongs_to :categorialivro
  has_many :locacao
  attr_accessible :autor, :data_lancamento, :edicao, :isbn, :prazo_entrega, :quantidade, :subtitulo, :titulo, :editora_id, :categorialivro_id

  validates_presence_of :editora
  validates_presence_of :categorialivro

  validates :autor, :data_lancamento, :edicao, :isbn, :prazo_entrega, :quantidade, :subtitulo, :titulo, :editora_id, :categorialivro_id, :presence => true
  validates :titulo, :isbn, :uniqueness => true
  validates_numericality_of :quantidade, :only_integer => true
  
  # Valida no Formato 000-00-000-0000-0
  validates_format_of :isbn, :with => /\d{3,3}[-]\d{2,2}[-]\d{3,3}[-]\d{4,4}[-]\d$/

	
end
