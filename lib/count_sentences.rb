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
    self.gsub!(".", "~")
    self.gsub!("?", "~")
    self.gsub!("!", "~")
    arr = self.split("~")
    clean_arr = arr.reject { |c| c.empty? }
    clean_arr.length
  end
end