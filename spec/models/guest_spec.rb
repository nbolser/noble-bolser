# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Guest, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:attending) }
    it { is_expected.to validate_inclusion_of(:attending).in_array([true, false]) }
  end
end
