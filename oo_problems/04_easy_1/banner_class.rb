class Banner
  def initialize(message)
    @message = message
    @length = message.size + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+" + "-".center(@length, "-") + "+"
  end

  def empty_line
    "|" + " ".center(@length, " ") + "|"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new("To boldy go where no one has gone before")
puts banner

banner2 = Banner.new("")
puts banner2
