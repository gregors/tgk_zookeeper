describe TGK::PID do
  describe '.clean_up' do
    it 'requires a pid file path' do
      expect{TGK::PID.clean_up}.to raise_error(
    end

    it 'loads the pid from the file path'

    it 'kills the process'
  end
end
