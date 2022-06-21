require './caesar_cipher'

describe "caesar_cipher method" do
  context "when cipher only shifts alphabetical letters" do
    context "when shift value is 26" do
      it "returns the same characters" do
        expect(caesar_cipher('Cat123xYZ!', 26)).to eql('Cat123xYZ!')
      end
    end

    context "when shift value is -26" do
      it "returns the same characters" do
        expect(caesar_cipher('Cat123xYZ!', 26)).to eql('Cat123xYZ!')
      end
    end

    context "when shift value is 3" do
      it "shifts letters 3 places to the right" do
        expect(caesar_cipher('Cat123xYZ!', 3)).to eql('Fdw123aBC!')
      end
    end

    context "when shift value is -3" do
      it "shifts letters 3 places to the left" do
        expect(caesar_cipher('Cat123xYZ!', -3)).to eql('Zxq123uVW!')
      end
    end

    context "when shift value is 55" do
      it "shifts letters 3 places to the right" do
        expect(caesar_cipher('Cat123xYZ!', 55)).to eql('Fdw123aBC!')
      end
    end

    context "when shift value is -55" do
      it "shifts letters 3 places to the left" do
        expect(caesar_cipher('Cat123xYZ!', -55)).to eql('Zxq123uVW!')
      end
    end
  end
end
