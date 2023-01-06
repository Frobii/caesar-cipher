require "./caesar-cipher.rb"

describe ".caesar_cipher" do

    it "swaps characters to their corresponding number" do
        expect(caesar_cipher("ubuntu", 2)).to eql("wdwpvw")
    end

    it "maintains case sensitivity after encryption" do
        expect(caesar_cipher("Ubuntu", 2)).to eql("Wdwpvw")
    end

    it "works with negative integers" do
        expect(caesar_cipher("ubuntu", -1)).to eql("tatmst")
    end

    it "maintains spacing" do
        expect(caesar_cipher("ubuntu is great", 2)).to eql("wdwpvw ku itgcv")
    end

    it "maintains punctuation" do
        expect(caesar_cipher("Ubuntu is great!", 2)).to eql("Wdwpvw ku itgcv!")
    end

    it "maintains numbers/symbols" do
        expect(caesar_cipher("Ubuntu is #1!", 2)).to eql("Wdwpvw ku #1!")
    end

end
