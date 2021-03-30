# frozen_string_literal: true
class Guest < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :attending, presence: true
end
