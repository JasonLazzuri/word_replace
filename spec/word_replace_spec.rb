require('rspec')
require('word_replace')

describe('String#word_replace') do
  it('replace "hello" with "conquer the"')do
    expect("hello world".word_replace).to(eq("conquer the world"))
  end
  it('replace "from" with "through"')do
    expect("hello world from".word_replace).to(eq("conquer the world through"))
  end
  it('will return original string if no chosen words are present')do
    expect("hi there".word_replace).to(eq("hi there"))
  end
end
