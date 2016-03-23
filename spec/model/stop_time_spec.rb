require 'rails_helper'

describe StopTime do
  it { should belong_to(:stop) }
  it { should belong_to(:trip) }
end
