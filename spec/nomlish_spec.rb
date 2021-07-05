require_relative '../lib/nomlish'
RSpec.describe Nomlish do


    it "has a version number" do
      expect(Nomlish::VERSION).not_to be nil
    end
    
    it "translate test" do
      origin_text = "これはテストの文章です。"
      translate_text = Nomlish.translate(origin_text)
      expect(translate_text).not_to eq(origin_text)
      expect(Nomlish.translate).to eq()
    end
  end