require 'rails_helper'

describe Route do
  it { should have_many(:trips) }
end
