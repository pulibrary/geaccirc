# frozen_string_literal: true

# generic model for the application
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
