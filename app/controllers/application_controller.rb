# frozen_string_literal: true

require 'navigation_helper.rb'

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include NavigationHelper
end
