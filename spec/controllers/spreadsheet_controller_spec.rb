# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SpreadsheetController do
  describe 'GET #index' do
    before do
      allow(Modsulator).to receive(:template_spreadsheet_path).and_return('send/file.xlsx')
    end

    it 'returns the spreadsheet template' do
      expect(controller).to receive(:send_file).with('send/file.xlsx')
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
