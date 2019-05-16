RSpec.describe Modsulator do
  describe 'initialized' do
    {
      'edition_physLoc_intmediatype.xlsx' => 'Excel Workbook'
    }.each do |testfile, description|
      it "loads sample test file in #{description} format correctly" do
        generated_xml_string = Modsulator.new(File.join(FIXTURES_DIR, testfile), testfile).convert_rows
        generated_xml = Nokogiri::XML(generated_xml_string)
        expected_xml = Nokogiri::XML(File.read(File.join(FIXTURES_DIR, 'edition_physLoc_intmediatype.xml')))
        expect(generated_xml).to be_equivalent_to(expected_xml).ignoring_attr_values('datetime', 'sourceFile')
      end
    end
  end
end
