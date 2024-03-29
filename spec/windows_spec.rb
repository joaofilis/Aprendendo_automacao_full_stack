describe 'Múltiplas janelas', :wnd do
    before(:each) do
        visit '/windows'
    end

    #código para manipulação de novas janelas abertas e como fecha-las também
    it 'Nova Janela' do
        nova_janela = window_opened_by { click_link 'Clique aqui' }
        within_window -> { page.title == 'Nova Janela' } do
            expect(page).to have_content 'Aqui temos uma nova janela \o/'
        end
        nova_janela.close
        expect(nova_janela.closed?).to be true
    end
end