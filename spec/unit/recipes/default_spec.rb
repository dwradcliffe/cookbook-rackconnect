require 'chefspec'
require 'chefspec/berkshelf'

describe 'rackconnect::default' do
  let(:chef_run) { ChefSpec::Runner.new(step_into: ['sudo']).converge(described_recipe) }

  it 'includes sudo' do
    expect(chef_run).to include_recipe('sudo')
  end

  it 'renders sudoers file' do
    expect(chef_run).to create_template('/etc/sudoers.d/rackconnect')
  end

end
