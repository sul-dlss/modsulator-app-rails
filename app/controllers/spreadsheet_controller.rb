class SpreadsheetController < ApplicationController
  def index
    render body: Modsulator.get_template_spreadsheet()
  end
end
