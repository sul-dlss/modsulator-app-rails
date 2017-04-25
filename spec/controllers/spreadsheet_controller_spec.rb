require 'spec_helper'
require 'rails_helper'

RSpec.describe SpreadsheetController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'returns the correct spreadsheet template' do
      get :index
      downloaded_binary_string = response.body
      expected_binary_string = IO.read(File.join(FIXTURES_DIR, 'modsulator_template.xlsx'), mode: 'rb')
      expect(downloaded_binary_string).to eq(expected_binary_string)
    end
  end
end
