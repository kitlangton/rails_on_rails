require 'rails_helper'

describe Trip do
  it { should belong_to(:route) }
  it { should have_many(:stop_times) }
  it { should have_many(:stops) }
end
