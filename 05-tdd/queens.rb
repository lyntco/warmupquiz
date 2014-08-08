class Queens
  attr_accessor :white, :black

  def initialize(queens={white: [0, 3], black:[7, 3]})
    raise ArgumentError if queens[:white] == queens[:black]
    @white = queens[:white]
    @black = queens[:black]
  end

  def to_s
    str = ""
    8.times do |row|
      8.times do |column|
        if [row, column] == @white || [row, column] == @black
          if [row, column] == @white
            str += "W"
          else
            str += "B"
          end
        else
          str += "O"
        end
        str += " " unless column == 7
      end
      str += "\n"
    end
    str.chomp
  end

  def attack?
    if same_row || same_column
      true
    elsif on_middle_diagonals
      true
    elsif check_other_diagonals
      true
    else
      false
    end
  end

  def same_row
    @white[0] == @black [0]
  end

  def same_column
    @white[1] == @black [1]
  end

  def on_middle_diagonals
    @white[0] == @white[1] && @black[0] == @black[1]
  end

  def check_other_diagonals
    if @white == [(@black[0] - 1), (@black[1] - 1) ]
      true
    elsif @white == [(@black[0] - 2), (@black[1] - 2) ]
      true
    end
  end

end