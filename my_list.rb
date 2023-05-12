require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def each(&block)
    @list.each(&block)
  end

  def <<(item)
    @list << item
  end

  def my_each(&block)
    @list.each(&block)
  end
end
