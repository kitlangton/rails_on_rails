require 'rails_helper'

describe Stop do
  it { should have_many(:stop_times) }
  it { should have_many(:trips) }
  it { should have_many(:connecting_stops) }
end
