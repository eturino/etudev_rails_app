shared_examples_for "an STI class" do

  it "should have attribute type" do
    expect(subject).to have_attribute :type
  end

  context "should initialize successfully as an instance of the parent class (or described_class if no parent)" do
    let(:klass) do
      if defined?(parent_class) && parent_class
        parent_class
      else
        described_class
      end
    end

    it do
      expect(subject).to be_a_kind_of klass
    end
  end

end