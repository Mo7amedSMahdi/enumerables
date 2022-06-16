require_relative './enumerable'

class MyList
    include Enumerable
    def initialize(*args)
        @list = args
    end

    def each()
        return to_enum(:each) unless block_given?
        counter = 0 
        while counter < @list.size
            yield @list[counter]
      counter += 1
        end
        @lis
    end
end
list = MyList.new(1, 2, 3, 4)
 list.all? {|e| e > 5}
list.any? {|e| e == 2}
 list.any? {|e| e == 5}
list.filter {|e| e.even?}