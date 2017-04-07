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
    count = 0
    text_array = self.split
    text_array.each do |text|
      if text.sentence? || text.question? || text.exclamation?
        count+=1
      end
    end
    return count
  end
end
