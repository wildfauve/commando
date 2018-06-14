RSpec.describe Commando do
  it "has a version number" do
    expect(Commando::VERSION).not_to be nil
  end

  it 'runs a command and returns a result' do
    cmd = "echo TEST"
    result = Commando::RunCommand.new.(cmd)

    expect(result).to be_success
    expect(result.value).to include "TEST"
  end

  it 'applies a filtering fn to the result' do
    cmd = "echo TEST"

    result = Commando::RunCommand.new.(cmd, Fn.replace.(/TE/, "**"))

    expect(result.value).to include "**ST"

  end

  # it 'runs a pipeline of commands' do
  #   cmds = ["echo TEST", "echo PIPELINE"]
  #
  #   result = Commando::RunCommand.new.(cmd, Fn.replace.(/TE/, "**"))
  #
  #   expect(result.value).to include "**ST"
  #
  # end

end
