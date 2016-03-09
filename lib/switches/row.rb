class Switches::Row
  attr_reader :switches

  def initialize(switch_count)
    @switches = [new_switch] * switch_count
  end

  def toggle_switches(lower_bound, upper_bound)
    (lower_bound..upper_bound).each do |i|
      toggled_switch = switches[i].toggle
      switches[i] = toggled_switch
    end
  end

  def total_on
    switches.select(&:on?).count
  end

  def switched_on?(index)
    switches[index].on?
  end

  private
  def new_switch
    Switches::Switch.new
  end
end
