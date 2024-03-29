describe 'Dynamic control', :dc do

    before(:each) do
        visit '/dynamic_controls'
    end

    it 'Quando habilita o campo', :campo_habilitado do
        # quando tem a propriedade disabled true o campo está desabilitado
        # quando não tem a propriedade disabled o campo está habilitado
        res = page.has_field? 'movie', disabled: true
        puts res
        click_button 'Habilita'
        res = page.has_field? 'movie', disabled: false
        puts res
    end
end