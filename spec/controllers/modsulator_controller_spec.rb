require 'spec_helper'
require 'rails_helper'

RSpec.describe ModsulatorController, type: :controller do

  describe 'GET #version' do
    it 'returns http success' do
      get :version
      expect(response).to have_http_status(:success)
      expect(response.body).to match(/\d.\d.\d$/)
    end
  end

  describe 'POST #create' do
    it 'returns the response with an xml content type' do
      post :create, params: {file: Rack::Test::UploadedFile.new(File.join(FIXTURES_DIR, 'crowdsourcing_bridget_1.xlsx'), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"), filename: 'crowdsourcing_bridget_1.xlsx' }
      expect(response.headers['Content-Type']).to eq 'application/xml; charset=utf-8'
      expect(response).to have_http_status(:success)
    end

    it 'returns correct XML for a known spreadsheet' do
      post :create, params: { file: Rack::Test::UploadedFile.new(File.join(FIXTURES_DIR, 'crowdsourcing_bridget_1.xlsx'), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"), filename: 'crowdsourcing_bridget_1.xlsx' }
      returned_xml = Nokogiri::XML(response.body)
      expected_xml = Nokogiri::XML(File.read(File.join(FIXTURES_DIR, 'crowdsourcing_bridget_1.xml')))
      expect(EquivalentXml.equivalent?(returned_xml, expected_xml, opts = { :ignore_attr_values => 'datetime'})).to be_truthy
    end
  end
end
