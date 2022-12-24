require "spec"

describe "hello world test" do
  it "it work" do
    stdout = IO::Memory.new

    Process.run("bash", ["-c", "crystal main.cr"], output: stdout)

    output = stdout.to_s

    puts output

    output.should eq "Hello, World!\n"
  end
end
