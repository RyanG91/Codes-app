class PageController < ApplicationController
  def codes
    @nuclear_code = "abcd1234"

    if current_user.has_role? :president
      @secret_code = @nuclear_code[0..3]
    end

    if current_user.has_role? :defence
      @secret_code = @nuclear_code[4..7]
    end

    if current_user.has_role? :russia
      @secret_code = @nuclear_code
    end

  end
end
