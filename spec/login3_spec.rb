
describe 'Login com cadastro', :login3 do
    before(:each) do
        visit 'access'
    end

    it 'Login com sucesso' do
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end       
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Cadastro com sucesso' do
        within('#signup') do
            find('input[name=username]').set 'Joao'
            find('input[name=password]').set '123456'
            click_link 'Criar Conta'
        end       
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end