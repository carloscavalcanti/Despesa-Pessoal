class Movimento < ActiveRecord::Base
  belongs_to :tipo

  def retornaValorDebito
    @total = Movimento.sum(:valor, :conditions => {:tipo_id => Tipo.where("tipo ='D'") } )
  end
    
  def retornaValorCredito
    @total = Movimento.sum(:valor, :conditions => {:tipo_id => Tipo.where("tipo ='C'") } )
  end
  
  def retornaQtdeMov
    @total = Movimento.count(:id)
  end
end
