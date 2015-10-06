require 'spec_helper'

describe 'all' do

  # このテストは各it実行毎に2秒sleepするので遅い
  describe 'slow spec', skip: '遅いテストは確認するときだけ実行すること' do
    before do
      puts "Preparing..."
      sleep 2
      puts "OK."
    end
    it 'true' do
      expect(true).to be_truthy
    end
    it 'true' do
      expect(true).to be_truthy
    end
    it 'true' do
      expect(true).to be_truthy
    end
  end
  # このテストは各it実行毎に待たないので早い
  describe 'fast spec' do
    before do
      puts "Preparing..."
      sleep 2
      puts "OK."
    end
    # aggregate_failures を指定することで、
    # すべてを実行して失敗したものを表示してくれる
    # aggregate_failures が無いと、1つ目の失敗しか表示しない
    it 'true', aggregate_failures: true do
      expect(true).to be_truthy
      expect(true).to be_truthy
      expect(false).to be_truthy
      expect(false).to be_truthy
      expect(true).to be_truthy
    end
  end

end


