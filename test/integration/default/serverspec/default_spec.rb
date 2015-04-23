require 'spec_helper'

describe 'solr::default' do
  describe service('solr') do
    it { should be_enabled }
    it { should be_running }
  end
end
