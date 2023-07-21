def encrypt(string)
  # definir um array do alfabeto
  alfabeto = ("A".."Z").to_a
  # retornar uma string vazia se o parametro for vazio
  return "" if string == ""
  # separar cada letra da string em um array
  letras = string.upcase.split("")
  # para cada letra em uma palavra, encontrar a que vai substituir
  nova_frase = letras.map do |letra|
    if letra == " "
      " "
    else
      ## procurar no array alfabero, qual o indice que a letra se encontra
      indice_no_alfabeto = alfabeto.index(letra)
      ## a partir do indice, buscar no alfabeto qual letra conrresponde com o index - 3
      letra_nova = alfabeto[indice_no_alfabeto - 3]
    end
  end
  # no final juntar esse array modificado em uma nova frase
  nova_frase.join
end

