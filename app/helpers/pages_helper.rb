# frozen_string_literal: true

module PagesHelper
  def pages_path
    if user_signed_in?
      'pages/pages_path/characters'
    else
      'pages/pages_path/non_signed_in'
    end
    end
end
