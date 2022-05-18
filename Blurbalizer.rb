class Blurbalizer
  def initialize(titulo)
    @titulo  = titulo
    @blurbs = [] # Um array fresquinho e limpo
                 # para armazenar os Blurbs
  end

  def adicionar_um_blurb(humor, conteudo) 
    # isso é um metodo
    # O << significa adicionar ao array
    @blurbs << Blurb.new(humor, conteudo)
  end

  def exibir_timeline
    # isso é um metodo
    puts "Blurbify: #{@titulo} tem #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.tempo
    }.reverse.each { |t|
      puts "#{t.conteudo.ljust(40)} #{t.tempo}"
    }
  end
end

meuApp = Blurbalizer.new "O Grande Blurb"