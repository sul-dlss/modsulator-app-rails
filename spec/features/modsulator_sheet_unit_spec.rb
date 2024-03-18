# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ModsulatorSheet do
  describe '#rows' do
    subject { described_class.new File.join(FIXTURES_DIR, 'test_002.csv'), 'test_002.csv' }

    it 'uses the right header row' do
      expect(subject.headers).to include 'druid', 'sourceId'
    end

    it 'presents each row as a hash' do
      row = subject.rows.first
      expect(row['druid']).to be_nil
      expect(row['sourceId']).to eq 'test:002'
    end

    context 'with a utf-8 CSV with BOM' do
      subject { described_class.new File.join(FIXTURES_DIR, 'utf8_with_bom.csv'), 'utf8_with_bom.csv' }

      it 'uses the right header row' do
        expect(subject.headers).to include 'druid', 'sourceId'
      end

      it 'presents each row as a hash' do
        row = subject.rows.first
        expect(row['druid']).to eq('gw231rx2566')
        expect(row['sourceId']).to eq('csv:04')
      end
    end

    context 'with a utf-8 CSV without BOM' do
      subject { described_class.new File.join(FIXTURES_DIR, 'utf8_without_bom.csv'), 'utf8_without_bom.csv' }

      it 'uses the right header row' do
        expect(subject.headers).to include 'druid', 'sourceId'
      end

      it 'presents each row as a hash' do
        row = subject.rows.first
        expect(row['druid']).to eq('gw231rx2566')
        expect(row['sourceId']).to eq('csv:04')
      end
    end
  end
end
