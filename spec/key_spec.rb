describe 'Key Presses', :key do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'enviando teclas', :send_the_symbols do
        # %i significa que abrirá um array de símbolos
        teclas = %i[tab escape space enter shift control alt]
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
        end
    end

    it 'enviando letras', :send_the_letters do
        # %w significa que abrirá um array de letras
        letras = %w[a s d f g h j k l]
        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end

end