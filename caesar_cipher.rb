def adjust_value(s) 
    if s <= 90 
    s += 5  if (s >= 65 && s <= 90)
    s -= 26 unless s <= 90
    else
    s += 5  if (s >= 97 && s <= 122)
    s -= 26 unless s <= 122
    end
    s
  end
  
  def caesar_cipher(str)
    num_val = str.bytes
     cipher = num_val.map do |val|
        adjust_value(val)
      end
    cipher.map{|num| num.chr}.join()
  end