require 'spec_helper'

describe 'Known Hosts' do
  # This here is some serious voodoo but it SHOULD work and provide a good
  # test.
  describe file('/tmp/kitchen/data_bags/server_data/known_hosts.json') do
    its(:content) { should include "TEST_RSA_PUBLIC_KEY_HOST-1\n" }
    its(:content) { should include "TEST_ECDSA_PUBLIC_KEY_HOST-2\n" }
    its(:content) { should include "TEST_ED25519_PUBLIC_KEY_HOST-3\n" }
  end
end
