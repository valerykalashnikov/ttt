require "spec_helper"

module TTT
  describe Player do
    it "should raise error when initialized with {}" do
      expect { Player.new({}) }.to raise_error(KeyError)
    end

    it "does not raise an error when initialized with a valid params hash" do
      params = { mark: "X", name: "Foo" }
      expect { Player.new params }.to_not raise_error
    end

    context "#mark" do
      it "returns the mark" do
        params = { mark: "X", name: "Foo" }
        player = Player.new(params)
        expect(player.mark).to eq "X"
      end
    end

    context "#name" do
      it "returns the name" do
        params = { mark: "X", name: "Foo" }
        player = Player.new(params)
        expect(player.name).to eq "Foo"
      end
    end
  end
end
