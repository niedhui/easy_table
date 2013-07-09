require 'spec_helper'
require 'rails/version'
require 'generators/easy_table/install_generator'
require 'ammeter/init'
describe EasyTable::Generators::InstallGenerator do

  before { run_generator }

  it "generate config/initializers/easy_table.rb" do
    File.read(file('config/initializers/easy_table.rb')).should =~ /EasyTable::Config.configure/
  end

end
