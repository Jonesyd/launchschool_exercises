class Banner
  def initialize(message, width=nil)
    @message = message
    @width = determine_width(message, width)
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+" + "-".center(@width, "-") + "+"
  end

  def empty_line
    "|" + " ".center(@width, " ") + "|"
  end

  def message_line
    "|" + @message.center(@width, " ") + "|"
  end

  def determine_width(message, width)
    message_width = message.size + 2
    width.nil? ? message_width : width < message_width ? message_width : width
  end
end


banner1 = Banner.new("To boldy go where no one has gone before")
puts banner1
banner2 = Banner.new("")
puts banner2
banner3 = Banner.new("Hello Mate", 50)
puts banner3
banner4 = Banner.new("Hello again mate!", 0)
puts banner4
