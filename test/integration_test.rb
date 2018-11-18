require_relative 'test_helper'

describe 'IntegrationTest' do
  it 'returns correct output' do
    assert_equal 'Running the app', ApplicationFactory.create_application.run
  end
end
