# frozen_string_literal: true

RSpec.describe Modsulator do
  let(:modsulator_template_path) { Rails.root.join('lib', 'modsulator', 'modsulator_template.xlsx').to_s }

  describe '#validate_headers' do
    subject { Modsulator.new File.join(FIXTURES_DIR, 'test_002.csv'), 'test_002.csv', template_string: 'abc def ghi' }
    let(:template_xml) { 'abc def ghi' }
    it 'includes headers not in the template string' do
      expect(subject.validate_headers(%w[abc phi])).not_to include 'abc'
      expect(subject.validate_headers(%w[abc phi])).to include 'phi'
    end
  end

  describe '#get_template_spreadsheet' do
    subject { Modsulator.get_template_spreadsheet }
    it 'returns the correct spreadsheet' do
      expected_binary_string = IO.read(modsulator_template_path, mode: 'rb')
      expect(Deprecation).to receive(:warn)
      expect(subject).to eq(expected_binary_string)
    end
  end

  describe '#template_spreadsheet_path' do
    subject { Modsulator.template_spreadsheet_path }
    it 'returns the path to the spreadsheet' do
      expect(subject).to eq(modsulator_template_path)
    end
  end
end
