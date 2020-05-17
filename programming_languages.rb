require 'pry'

def reformat_languages(languages)
  # your code here
  # We want to return the languages as keys in new_hash and type/style as keys in the language subhash.
  new_hash = {}
  languages.each do |style, language| # language is a HASH currently
    language.each do |lang, type_value| # type is also a HASH currently
      type_value.each do |type_key, value|
        if new_hash[lang] == nil
          new_hash[lang] = { :type => value, :style => [style] }
        else
          new_hash[lang][:style] << style
        end
      end
    end
  end
  new_hash
end
