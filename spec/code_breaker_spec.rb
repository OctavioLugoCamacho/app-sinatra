require 'code_breaker'
describe CodeBreaker do
  context "Given the number 7519" do
    it "guess 1094 and return XX" do
      play = CodeBreaker.new("7519")
      expect(play.try("1094")).to eq "XX"
    end
    it "guess 0123 and return X" do
      play = CodeBreaker.new("7519")
      expect(play.try("0123")).to eq "X"
    end
    it "guess 1406 and return X" do
      play = CodeBreaker.new("7519")
      expect(play.try("1406")).to eq "X"
    end
    it "guess 9517 and return XX__" do
      play = CodeBreaker.new("7519")
      expect(play.try("9517")).to eq "XX__"
    end
    it "guess 9817 and return XX_" do
      play = CodeBreaker.new("7519")
      expect(play.try("9817")).to eq "XX_"
    end
    it "guess 9518 and return X__" do
      play = CodeBreaker.new("7519")
      expect(play.try("9518")).to eq "X__"
    end
    it "guess 5917 and return XXX_" do
      play = CodeBreaker.new("7519")
      expect(play.try("5917")).to eq "XXX_"
    end
    it "guess 1975 and return XXXX" do
      play = CodeBreaker.new("7519")
      expect(play.try("1975")).to eq "XXXX"
    end
    it "guess 7519 and return ____" do
      play = CodeBreaker.new("7519")
      expect(play.try("7519")).to eq "____"
    end
  end
end