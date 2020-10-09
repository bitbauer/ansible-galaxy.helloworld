require_relative 'spec_helper'

deploy_user = "vagrant"
deploy_home = "/home/vagrant"

describe user(deploy_user) do
  it { should exist }
  it { should have_home_directory deploy_home }
end
