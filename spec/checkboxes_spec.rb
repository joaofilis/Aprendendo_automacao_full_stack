describe 'Caixa de seleção', :checkbox do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'Marcando uma opção' do
        check('thor')
    end
    
    it 'desmarcando uma opção' do
        uncheck('antman')
    end
    
    # Nesses dois casos abaixo checkbox não possuía ID logo a solução foi procurar por css selector
    it 'Marcando com find e set true' do
        find('input[value=cap]').set(true)
    end
    
    it 'desmarcando com find e set false' do
        find('input[value=guardians]').set(false)
    end
    
    after(:each) do
        sleep 3
    end
end