class TimesController < ApplicationController
  def main
  	@time = Time.now.strftime("%h %d, %Y %l:%M:%S %p %Z")
  end
end
