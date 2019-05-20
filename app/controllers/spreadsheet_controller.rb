# frozen_string_literal: true

class SpreadsheetController < ApplicationController
  def index
    send_file Modsulator.template_spreadsheet_path
  end
end
