def reformat_languages(hash)
  newHash = {}
  hash.each do |key, val|
    val.each do |lang, attr|
      newHash[lang] = {:type => attr.values.join(''), :style => []}
      if hash[key][lang]
        newHash[lang][:style].push(key)
      end
    end
    newHash[:javascript][:style].push(:oo)
  end
ewHash
end
