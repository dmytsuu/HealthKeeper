# frozen_string_literal: true

describe Disease do
  it { should have_and_belong_to_many(:appointments) }
end
