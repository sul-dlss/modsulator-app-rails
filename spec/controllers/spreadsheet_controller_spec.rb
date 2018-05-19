require 'rails_helper'

RSpec.describe SpreadsheetController, type: :controller do

  describe 'GET #index' do
    let(:io) { StringIO.new("The file contents")}
    before do
      allow(Modsulator).to receive(:get_template_spreadsheet).and_return(io)
    end

    it 'returns the spreadsheet template' do
      get :index
      expect(response).to have_http_status(:success)
      expect(response.body).to eq "The file contents"
    end
  end
end
