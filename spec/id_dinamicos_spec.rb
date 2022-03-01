describe 'IDs dinamicos', :ids_dinamicos do
    before(:each) do
        visit '/access'
    end

    # $ => termina com
    # ^ => começa com
    # * => contém

    it 'cadastro' do
        find('input[id$=UsernameInput]'). set 'Joao'
        find('input[id^=PasswordInput]'). set 'Joao'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end