require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    if key == :oo
      value.each do |language, attribute|
        attribute[:style] = [:oo]
        new_hash[language] = attribute
      end
    elsif key == :functional
      value.each do |language, attribute|
          attribute[:style] = [:functional]
          new_hash[language] = attribute
            if language == :javascript
            attribute[:style] = [:oo, :functional]

        end
      end
    end
  end
  new_hash
end
