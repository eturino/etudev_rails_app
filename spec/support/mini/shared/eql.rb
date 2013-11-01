
shared_examples_for "(eql? == hash) no" do
  it "eql? false" do
    expect(subject.eql?(other)).to be_false
  end
  it "== false" do
    expect(subject == other).to be_false
  end
  it "hash not the same" do
    expect(subject.hash).not_to eq other.hash
  end
  it "if uniq is called in an array with the 2, both remain" do
    expect([subject, other].uniq.size).to eq 2
  end
end

shared_examples_for "(eql? == hash) yes" do
  it "eql? false" do
    expect(subject.eql?(other)).to be_true
  end
  it "== false" do
    expect(subject == other).to be_true
  end
  it "hash not the same" do
    expect(subject.hash).to eq other.hash
  end
  it "if uniq is called in an array with the 2, only one remains" do
    expect([subject, other].uniq.size).to eq 1
  end
end