require 'spec_helper'

describe GoatBombController do
  subject(:goatbomb) { described_class.new }
  let(:id) { double:id }

  before do
    allow(goatbomb).to receive(:send)
  end

  it 'sends a goat bomb text message' do
    expect(goatbomb).to receive(:send).with(id)
    goatbomb.send(id)
  end
end
