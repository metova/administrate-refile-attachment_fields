describe 'Decorators' do
  it 'can build a class that supports direct uploads' do
    klass = Administrate::Field::DirectAttachment.decorate(Administrate::Field::Attachment)
    instance = klass.new(nil, nil, nil, nil)
    expect(instance).to be_direct
    expect(instance).to_not be_presigned
    expect(instance).to_not be_multiple
  end

  it 'can build a class that supports presigned uploads' do
    klass = Administrate::Field::PresignedAttachment.decorate(Administrate::Field::Attachment)
    instance = klass.new(nil, nil, nil, nil)
    expect(instance).to be_presigned
    expect(instance).to_not be_direct
    expect(instance).to_not be_multiple
  end

  it 'can build a class that supports multiple uploads' do
    klass = Administrate::Field::MultipleAttachment.decorate(Administrate::Field::Attachment)
    instance = klass.new(nil, nil, nil, nil)
    expect(instance).to be_multiple
    expect(instance).to_not be_direct
    expect(instance).to_not be_presigned
  end

  it 'can compose multiple decorators' do
    klass = Administrate::Field::DirectAttachment.decorate Administrate::Field::MultipleAttachment.decorate Administrate::Field::Attachment
    instance = klass.new(nil, nil, nil, nil)
    expect(instance).to be_direct
    expect(instance).to be_multiple
    expect(instance).to_not be_presigned
  end
end
