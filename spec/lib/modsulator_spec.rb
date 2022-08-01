# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Modsulator do
  describe '#validate_headers' do
    subject { described_class.new File.join(FIXTURES_DIR, 'test_002.csv'), 'test_002.csv', template_string: 'abc def ghi' }

    let(:template_xml) { 'abc def ghi' }

    it 'includes headers not in the template string' do
      expect(subject.validate_headers(%w[abc phi])).not_to include 'abc'
      expect(subject.validate_headers(%w[abc phi])).to include 'phi'
    end
  end

  describe '#template_spreadsheet_path' do
    subject { described_class.template_spreadsheet_path }

    it 'returns the path to the spreadsheet' do
      expect(subject).to eq(File.join(File.expand_path('../../app/lib/modsulator', __dir__), 'modsulator_template.xlsx'))
    end
  end
end
