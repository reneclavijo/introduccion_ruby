require_relative '../lib/beer'

RSpec.describe Beer do

    context "full" do
        it "return 100%" do
            beer = Beer.new 
            expect(beer.nivel).to eq "100%"
        end
    end
end