require 'spec_helper'

describe 'all' do
  it 'true' do
    expect(true).to be_truthy
  end
  describe 'select' do
    it 'true' do
      expect(true).to be_truthy
    end
    it 'true' do
      # わざと失敗させる
      expect(false).to be_truthy
      # tmp/examples.txtに結果が記載される
      # テスト順番の変更、追加、削除がされたら、examples.txtは一度けすこと
      # ログと実際のテストケースが異なるため

      # 修正したら、--only-failures を追加して実行すると、失敗したものだけ実行される

      # 修正したら、--next-failure を追加して実行すると、失敗→修正→成功→次のテスト
      # のように、失敗したものを順番に続けてくれる
    end
    it 'true' do
      # わざと失敗させる
      expect(false).to be_truthy
    end
  end

end
