require 'spec_helper'

describe CryptEnv::Crypto do
  before do
    @key     = "c\e\xE2\xD0\xDE\x82\x03\xDE\xB4)\xA4D\x02\xB7\x06y\xB3\xEEC\xACEs\xDC\xE5\xC6\x8A\xAA\x97E\xE1|v"
    @iv      = "^\x9B@m_\xCF\e\xCEx8\x15\xAD\x8D'\x8FA" 
  end
  it '#encrypt' do
    ret = described_class.encrypt '0123456789', key: @key, iv: @iv
    expect(ret).to eq "OCS5Y3FEUyMvNxwuOVw2RA==\n"
  end
  it '#decrypt' do
    ret = described_class.decrypt "OCS5Y3FEUyMvNxwuOVw2RA==\n", key: @key, iv: @iv
    expect(ret).to eq '0123456789'
  end
  it '#encrypt=>#decrypt' do
    @encrypt = described_class.algorithm
    @encrypt.encrypt
    (0..9).each do
      key = @encrypt.random_key
      iv = @encrypt.random_iv

      expected = '0123456789'

      ret = described_class.encrypt expected, key: key, iv: iv
      actual = described_class.decrypt ret, key: key, iv: iv

      expect(expected). to eq actual
    end
  end
end
