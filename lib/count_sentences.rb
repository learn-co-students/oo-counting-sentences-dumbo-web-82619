require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split.select do |string|
      string.end_with?(".", "?", "!")
    end
    sentences.count
  end
end

# binding.pry