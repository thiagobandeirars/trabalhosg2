class Livro < ActiveRecord::Base
  belongs_to :editora
  belongs_to :categorialivro
  has_many :locacao
  attr_accessible :autor, :data_lancamento, :edicao, :isbn, :prazo_entrega, :quantidade, :subtitulo, :titulo, :editora_id, :categorialivro_id

  validates_presence_of :editora
  validates_presence_of :categorialivro

  validates :autor, :data_lancamento, :edicao, :isbn, :prazo_entrega, :quantidade, :subtitulo, :titulo, :editora_id, :categorialivro_id, :presence => true


end
