class Locacao < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :livro
  attr_accessible :data_devolucao, :data_locacao, :data_prevista_dev, :multa, :usuario_id, :livro_id

  validates :data_locacao, :data_prevista_dev, :multa, :usuario_id, :livro_id, :presence => true

end
