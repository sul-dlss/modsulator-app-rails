# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @version ||= File.readlines('VERSION').first
    render plain: "modsulator-api version #{@version}"
  end
end
