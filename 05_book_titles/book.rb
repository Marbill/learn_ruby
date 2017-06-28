class Book
  attr_reader :title

  def title=(title)
    titleArray = title.split(" ")
    output = []
    titleArray.length.times do |i|
      case titleArray[i]
      when "the", "a", "and", "an", "of", "in"
        output.push(titleArray[i])
      else
        output.push(titleArray[i].capitalize)
      end
    end

    t = output.join(" ")
    t = t[0].capitalize + t[1..-1]
    @title = t
  end
end
