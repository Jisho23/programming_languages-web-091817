require "pry"

def reformat_languages(languages)
  reformatted_languages = {}

  languages.each do |style, language|
    language.each do |current_lang, data|
      if reformatted_languages[current_lang]
        reformatted_languages[current_lang][:style] << style
      else
        reformatted_languages[current_lang] = data
        reformatted_languages[current_lang][:style] = [style]
      end
    end
  end

  return reformatted_languages
  # your code here
end
