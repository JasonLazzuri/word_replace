class String
  define_method(:word_replace) do
    words = []
    start = self.split(" ")
    start.each() do |word|
      if word == 'hello'
        words.push('conquer the')
      elsif word == 'from'
        words.push('through')
      elsif word == 'Epicodus'
        words.push('code')
      elsif word == 'cat'
        words.push('t-rex')
      elsif word == 'fluffy'
        words.push('fierce')
      else
        words.push(word)
      end
    end
    words.join(" ")
  end
end
