
class MasterMind
  attr_accessor :new_code

 	def initialize
    start_game
  end

    def start_game
      @new_code = coder

      8.times do
        @new_colors = get_colors
        @result = check_colors(@new_code, @new_colors)
        if @result.all? { |x| x == 'b'}
          puts 'congurajulation you win '
          Kernel.exit
        else
          puts @result.inspect
        end
      end
      at_exit { puts 'game over' }
    end

  	def get_colors
  	  puts 'enter 4 numbers each reperesent following colors'
  	  puts '      1 for white 2 for black 3 for blue 4 for red 5 for pink 6 for grey'
  	  @decod_color = []
  	  4.times do
  	    @decod_color << gets.chomp.to_i
  	  end
  	  @decod_color
  	end

  	def check_colors(code_color, answer_color)
  	  result = []
  	  4.times do |i|
  	  	if code_color[i] == answer_color[i]
  	  	  result[i] = 'b'
  	  	else
  	  	  result[i] = ''
  	  	end
      end
      4.times do |i|
      	if result[i] == '' and code_color.include? answer_color[i]
      	  result[i] = 'w'
      	end
      end
      #puts code_color.inspect + 'code color'
      result
    end

    private
    def coder
      @colors = []
      4.times do 
        @colors << rand(1..6)
      end
      @colors
    end
end

a = MasterMind.new

