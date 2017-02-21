/class Test1
  def initialize
  	@in_class = InnterTest.new
  end

  class InnterTest
  	def get_name
  		@name = 'ali'
  		@name
  	end
  end

end

obj = Test1.new
puts obj.@in_class.get_name/


class Test1
  attr_accessor :in_class
  def initialize
      @in_class = InnterTest.new
  end

  class InnterTest

      def get_name
          @name = 'ali'
          @name
      end
  end

end

obj = Test1.new
puts obj.in_class.get_name



#correct way
class Test1
  attr_accessor :in_class
  def initialize
      @in_class = InnterTest.new
  end
end


class InnterTest
    def initialize
      @name= 'ali'
    end
    def get_name
        @name
    end
end


obj = Test1.new
puts obj.in_class.get_name