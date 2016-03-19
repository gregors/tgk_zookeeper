module TGK
  module Zookeeper
describe Server do
  describe '.new' do
    before(:all) do
      @server = Server.new
    end

    it 'kills existing process'

    context 'without java installed' do
      it 'raises an error if Java is missing' do
        Server.any.stub(:java)
        expect{ Server.new }.to raise_error(TGK::Zookeeper::JavaMissing)
      end
    end
  end

    describe '#pid' do context 'with no current zookeeper' do
      it 'is not set' do
        expect(subject.pid).to be_nil
      end
    end

    context 'with previous zookeeper' do
      before do
        pid = Process.spawn('echo')
        IO.write('./zookeeper.pid', pid)
      end

      after(:each) do
        File.delete('./zookeeper.pid') 
      end

      it 'finds previous pid file' do
        expect(subject.pid).to be
      end
    end


  end

  describe '#run' do
    it 'runs zookeeper server process' do
      @server.should_receive(:exec).with(/java zookeeper/)
    end

    it 'writes process id to a local pid file'
  end

  describe '.stop' do
  end
end
  end
end
