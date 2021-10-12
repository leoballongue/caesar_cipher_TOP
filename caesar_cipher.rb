def caesar_cipher(cadena, shift)
  arreglo = []
  cadena.bytes.each do
    |n|
    if (65..90).include?(n) && n + shift <= 90 || (97..122).include?(n) && n + shift <= 122
      arreglo << n.+(shift).chr
    elsif n + shift > 90 || n + shift > 122
      arreglo << n.-(26).+(shift).chr
    else
      arreglo << n.chr
    end
  end
  arreglo.join("")
end

cadena2 = caesar_cipher("What a string!", 5)

