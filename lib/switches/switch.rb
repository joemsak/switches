class Switches::Switch
  def initialize(options = {})
    @on = options[:on] || false
  end

  def toggle
    self.class.new(on: !@on)
  end

  def off?
    !@on
  end

  def on?
    @on
  end
end
