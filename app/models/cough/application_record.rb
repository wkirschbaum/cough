# frozen_string_literal: true

module Cough
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
