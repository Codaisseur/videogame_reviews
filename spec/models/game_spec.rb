require 'rails_helper'

RSpec.describe Game, type: :model do
  it { is_expected.to belong_to :category }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :category }
end
