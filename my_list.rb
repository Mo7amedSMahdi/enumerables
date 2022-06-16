require_relative './enumerable'

class MyList
    include Enumerable
    def initialize(*args)
        @list = args
    end

    def each()
        
    end
end