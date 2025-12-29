# frozen_string_literal: true

def caesar_cipher(orig_string, shift_amount = 1)
  shifted_string = ''
  orig_string.each_char do |char|
    shifted_string += if alphabetical?(char)
                        if capital?(char)
                          shift_upper(char, shift_amount)
                        else
                          shift_lower(char, shift_amount)
                        end
                      else
                        char
                      end
  end
  p shifted_string
end

def shift_upper(chr, shift_amount)
  shifted_chr = chr.ord + shift_amount
  shifted_chr -= 26 if shifted_chr > 90
  shifted_chr.chr
end

def shift_lower(chr, shift_amount)
  shifted_chr = chr.ord + shift_amount
  shifted_chr -= 26 if shifted_chr > 122
  shifted_chr.chr
end

def capital?(chr)
  chr == chr.upcase
end

def alphabetical?(chr)
  chr.match('[a-zA-Z]')
end

caesar_cipher('What a string!', 5)
