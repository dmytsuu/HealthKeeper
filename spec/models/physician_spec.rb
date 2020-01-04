# frozen_string_literal: true

describe Physician do
  it { should have_many(:conversations).dependent(:destroy) }
  it { should have_many(:messages).dependent(:destroy) }
  it { should have_many(:appointments).dependent(:destroy) }
  it { should have_many(:patients).through(:appointments) }
end
