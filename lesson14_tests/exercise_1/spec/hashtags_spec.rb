require 'hashtags'

describe 'hashtags' do
  
  it 'returns single hastag' do
    expect(hashtags('words with #tags')).to eq %w(#tags)
  end

  it 'returns two hastags' do
    expect(hashtags('words with #tags end #two_tags')).to eq %w(#tags #two_tags)
  end

  it 'returns words on rushan hastag' do
    expect(hashtags('words with #море')).to eq %w(#море)
  end

  it 'returns hastags with ___' do
    expect(hashtags('words with #___')).to eq %w(#___)
  end

  it 'returns hastags with ---' do
    expect(hashtags('words with #---')).to eq %w(#---)
  end

  it 'returns hastags without ?' do
    expect(hashtags('words with #tag???')).to eq %w(#tag)
  end

  it 'returns hastags without !' do
    expect(hashtags('words with #tag!')).to eq %w(#tag)
  end

end