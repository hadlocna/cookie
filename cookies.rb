
describe Cookie do
  let(:cookie) {Cookie.new(type, quantity)}
  let(:type) {"peanutbutter"}
  let(:quantity) {65000000}



  context '#batch' do
    it  "displays the type of cookie" do
      cookie.batch.should eq "Cookie: peanutbutter, 65000000"
    end

    describe "when baking 10 cookies" do
      let(:quantity) {10}

      it "should display 10 cookies in the batch size" do
        cookie.batch.should eq "Cookie: peanutbutter, 10"
      end
    end

    describe "when baking coco cookies" do
      let(:type) {"coco"}

      it "should display coko cookies in batch type" do
        cook.batch.should eq "Cookie: coco, 65000000"
      end
    end
  end

  context "#cook" do
    it "cooks the mf cookies" do
      cookie.cook.should eq "Status: The mf cookie has been baked for 1 min"
    end
  end

  describe "#baked?" do
    context "when working with a cookie" do
      it  "baked when time is > 20 min" do
        cookie.baked?(21).should be_true
      end

      it "is not baked with time is < 20 min" do
        cookie.baked?(19).should be_false
      end
    end
end

describe Oven do
  let(:oven) {Oven.new(s time)}
  let(:time) {0}


  context '#status' do
    it "displays the status of cookie in oven" do
      cookie.status.should eq "Cookie: doughy"
    end

    describe "when cookies are unbaked" do
