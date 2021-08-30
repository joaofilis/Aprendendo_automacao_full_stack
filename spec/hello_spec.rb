
describe 'Meu primeiro script' do
    it 'Visitar a página' do
        visit 'https://training-wheels-protocol.herokuapp.com/'
        expect(page.title).to eql('Training Wheels Protocol')
    end
end

describe '' do
    it '' do
        visit 'https://training-wheels-protocol.herokuapp.com/'
    end
end