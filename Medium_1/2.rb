class TextAnalyzer
  def process
    f = File.open("text.txt", "r")
    yield(f.read)
    f.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines"}
analyzer.process { |text| puts "#{text.split(" ").count} words" }