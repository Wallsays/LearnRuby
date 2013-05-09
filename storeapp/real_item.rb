class RealItem < Item

  def initialize(options)
    @weight = options[:weight]
    super # equals super(options)
  end

  attr_reader :weight

  def info
    yield weight
  end

end
