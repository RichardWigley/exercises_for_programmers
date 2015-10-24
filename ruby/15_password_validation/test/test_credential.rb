require 'test_helper'
require 'credential'

describe Credential do
  describe '#authenticate?' do
    it 'succeeds when password matches' do
      credential = Credential.new plain_password: 'secret'
      credential.authenticate?('secret').must_equal true
    end

    it 'rejects when password mismatches' do
      credential = Credential.new plain_password: 'secret'
      credential.authenticate?('arbitary').must_equal false
    end

    it 'is case sensitive' do
      credential = Credential.new plain_password: 'secret'
      credential.authenticate?('SECRET').must_equal false
    end
  end
end
