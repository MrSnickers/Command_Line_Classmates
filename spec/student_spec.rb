require '../lib/student.rb'

stegosnorus = Student.new("Stegosnorus", "Twitter", "blog!")

describe Student do
describe "#initialize" do
  it "should be initialized with name" do
    expect(stegosnorus.name).to eq("Stegosnorus")
  end
  it "should be initialized with a twitter" do
    expect(stegosnorus.twitter).to eq("Twitter")
  end
  it "should be able to rewrite blog" do
    expect(stegosnorus.blog = "Pop").to eq("Pop")
  end
end



end