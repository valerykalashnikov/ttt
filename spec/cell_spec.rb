require "spec_helper"
module TTT
  describe Cell do
    context "#initialize" do
      it "is initialized with a value '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it "can be initialized with a value X" do
        cell = Cell.new "X"
        expect(cell.value).to eq "X"
      end
    end
  end
end
