class Nido < String
  DEFAULT_SEPARATOR = ":".freeze

  def initialize(key, separator = DEFAULT_SEPARATOR)
    @separator = separator.to_s.freeze
    super(key.to_s)
  end

  def [](key)
    self.class.new("#{self}#{@separator}#{key}", @separator)
  end
end
