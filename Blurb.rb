class Blurb
  attr_accessor :conteudo, :hora, :humor
  def initialize(humor, conteudo="") 
    # Este parâmetro conteudo=“”__ está aqui para garantirmos que o conteúdo é uma string, mesmo se nenhum conteúdo for passado como parâmetro para o método initialize
    @tempo    = Time.now
    @conteudo = conteudo[0..39]
    @humor    = humor
  end
end

Blurb2 = Blurb.new :conteudo, "Eu não posso acreditar que Mt. Hood foi roubado!"
puts Blurb2.conteudo
# Blurb.new.tempo
# blurb1 = Blurb.new
# blurb1.conteudo = "Hoje, Mount Hood foi roubado!"
# blurb1.hora = Time.now
# blurb1.humor = :doente
