require "spec_helper"

describe AccentBuster do
  let(:subject) { "açÃo!".extend(AccentBuster) }
  describe "#accent_buster" do
    it 'replaces "açÃo!" by "acAo!"' do
      expect(subject.buster.bust).to eq "acAo!"
    end
  end

  describe "#accent_buster(:up)" do
    it 'upcases "açÃo!" to "AÇÃO!"' do
      expect(subject.buster.up).to eq "AÇÃO!"
    end
  end

  describe "#accent_buster(:down)" do
    it 'upcases "açÃo!" to "ação!"' do
      expect(subject.buster.down).to eq "ação!"
    end
  end
end