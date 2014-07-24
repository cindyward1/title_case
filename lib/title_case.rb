def title_case(title)
  exclusions = ["a","an","the","and","but","or","on","in","with","at","under","near","to","upon","by","of"]
  words_in_title = title.downcase.split
  converted_title = [words_in_title[0][0].upcase + words_in_title[0][1..-1].downcase]
  words_in_title[1..-1].each do |title_word|
    is_found = false
    exclusions.each do |excluded_word|
      if title_word == excluded_word
        is_found = true
        converted_title.push(title_word.downcase)
      end
    end

    if !is_found
      first_letter = title_word[0].upcase
      remaining_letters = title_word[1..-1].downcase
      converted_title.push(first_letter + remaining_letters)
    end
  end
  return converted_title.join(" ")
end

title_case ("christmas IN JulY")

