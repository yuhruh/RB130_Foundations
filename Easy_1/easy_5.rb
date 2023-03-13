ROT_13 = ["AN", "BO", "CP", "DQ", "ER", "FS", "GT", "HU", "IV", "JW", "KX", "LY", "MZ"]

def decipher(str)
  decipher_str = ""

  str.chars.each do |char| # iterate the charaters of string
    select_rot = ROT_13.select{ |letter| letter.downcase.include?(char.downcase) }
    if select_rot.empty?
      decipher_str << char
    else
      sub_char = select_rot[0].sub(/[#{char.upcase}]/, "")
      decipher_str << sub_char
    end
  end
  decipher_str.split.map{|word| word.capitalize}.join(" ")
 
end

# output
# Ada Lovelace
# Grace Hopper
# Adele Goldstine
# Alan Turing
# Charles Babbage
# Abdullah Muhammad bin Musa al-Khwarizmi
# John Atanasoff
# Lois Haibt
# Claude Shannon
# Steve Jobs
# Bill Gates
# Tim Berners-Lee
# Steve Wozniak
# Konrad Zuse
# Sir Antony Hoare
# Marvin Minsky
# Yukihiro Matsumoto
# Hayyim Slonimski
# Gertrude Blanch