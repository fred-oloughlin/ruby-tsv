require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper.rb')

describe TSV::LineCyclist do
  let(:source) { IO.read(File.join(File.dirname(__FILE__), '..', '..', 'fixtures', filename)) }
  let(:filename) { 'example.tsv' }

  let(:header) { true }
  let(:parameters) { { header: header } }

  subject(:cyclist) { TSV::LineCyclist.new(source, parameters) }

  it_behaves_like "Cyclist"
end
