# frozen_string_literal: true

require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test 'success response for health' do
    get '/health'
    assert_response :success
  end
end
