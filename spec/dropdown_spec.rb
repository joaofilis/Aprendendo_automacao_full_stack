
describe 'Caixa de opções', :dropdown do
    it 'Item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'Item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drops = find('.avenger-list')
        drops.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'Qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drops = find('.avenger-list')
        drops.all('option').sample.select_option
        # sample é uma função do ruby para selecionar qualquer valor dentro de um array
        sleep 3
    end

end