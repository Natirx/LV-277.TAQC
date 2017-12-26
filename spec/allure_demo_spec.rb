
describe "MySpec", :feature => "Some feature", :severity => :normal do
#describe "MySpec" do

  before(:step) do |s|
    puts "*****Before step #{s.current_step}"
  end

  it "should be critical", :story => "First story", :severity => :critical, :testId => 99 do
  #it "should be critical" do
    puts "*****it Compare"
    "string".should == "string"
  end

  it "should be steps enabled", :story => ["First story", "Second story"], :testId => 31 do |e|
    
    e.step "step1" do |s|
      puts "*****step1"
      #s.attach_file "screenshot1", take_screenshot_as_file
    end

    e.step "step2" do
      puts "*****step2"
      5.should be > 0
    end

    e.step "step3" do
      puts "*****step2"
      0.should == 0
    end

    e.attach_file "screenshot2", take_screenshot_as_file
  end
end
