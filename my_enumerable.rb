module MyEnumerable
    def all?
      my_each { |item| return false unless yield(item) }
      true
    end
  
    def any?
      my_each { |item| return true if yield(item) }
      false
    end
  
    def filter
      result = []
      my_each { |item| result << item if yield(item) }
      result
    end
  
    def my_each(&block)
      raise NotImplementedError, "You must implement the 'my_each' method"
    end
  end