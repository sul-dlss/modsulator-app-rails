require 'rails_helper'

RSpec.describe NormalizerController, type: :controller do

  describe 'POST #create' do
    it 'returns the response with an xml content type' do
      post :create, params: { file: Rack::Test::UploadedFile.new(File.join(FIXTURES_DIR, 'denormalized.xml')) }
      expect(response.headers['Content-Type']).to eq 'application/xml; charset=utf-8'
      expect(response).to have_http_status(:success)
    end

    it 'returns normalized MODS XML given ugly MODS XML' do
      post :create, params: {file: Rack::Test::UploadedFile.new(File.join(FIXTURES_DIR, 'denormalized.xml')) }
      returned_xml = response.body
      expected_xml = File.read(File.join(FIXTURES_DIR, 'normalized.xml'))
      expect(returned_xml.to_s).to eq(expected_xml.to_s)
    end
  end
end
