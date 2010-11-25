class Tipo < ActiveRecord::Base
  validates_presence_of :descricao, :message => " - Deve ser preenchido"
  validates_uniqueness_of :descricao, :message => " - Já existe"
  validates_length_of :tipo, :within => 1..1, :message => " - Somente 1 caracter"
  has_many :movimentos
end
