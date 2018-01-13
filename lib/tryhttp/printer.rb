module Tryhttp::Printer
  def self.typing(text, interval)
    text.chars.each do |c|
      print c
      sleep(interval)
    end
  end

  def self.cr()
      print "\r"
  end
end
