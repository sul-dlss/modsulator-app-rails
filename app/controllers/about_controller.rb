class AboutController < ApplicationController
  def index
    @version ||= IO.readlines('VERSION').first
    render plain: "modsulator-api version #{@version}"
  end
end
