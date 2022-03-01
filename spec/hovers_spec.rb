describe 'Mouse Hovers', :hover do

    before(:each) do
        visit '/hovers'
    end

    it 'Quando passo o mouse pelo blade' do
        #sem usar regex você obrrigatoriamente tem de passar o selector completo card = find('img[alt=Blade]')
        card = find('img[alt*=Blade]')
        # * significa "contém" em regex
        card.hover
        expect(page).to have_content 'Nome: Blade'
    end

    it 'Quando passo o mouse pelo pantera negra' do
        #sem usar regex obrrigatoriamente tem de passar o selector completo com aspas duplas pois tem espaço na sua expressão card = find('img[alt="Pantera Negra"]')
        card = find('img[alt^="Pantera"]')
        # ˆ significa "começa com" em regex
        card.hover
        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Quando passo o mouse pelo Homem Aranha' do
        #sem usar regex obrrigatoriamente tem de passar o selector completo com aspas duplas pois tem espaço na sua expressão card = find('img[alt="Homem Aranha"]')
        card = find('img[alt$="Aranha"]')
        # $ significa "termina com" em regex
        card.hover
        expect(page).to have_content 'Nome: Homem Aranha'
    end
end