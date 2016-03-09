require 'spec_helper'

describe Switches::Switch do
  it "is off by default" do
    switch = described_class.new
    expect(switch).to be_off
  end

  it "toggles on and off" do
    original_switch = described_class.new
    switch = original_switch.toggle

    expect(switch).not_to be_off
    expect(switch).to be_on
  end
end


describe Switches::Row do
  it "sets up n number of switches" do
    row = described_class.new(10)
    expect(row.switches.count).to eq(10)
  end

  it "toggles a range of switches" do
    row = described_class.new(10)

    row.toggle_switches(0, 1)

    expect(row.total_on).to eq(2)
    expect(row.switched_on?(0)).to be true
    expect(row.switched_on?(1)).to be true
  end
end
