class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each { |element| block.call(element) }
  end
end
