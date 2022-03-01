
describe 'Forms' do
    it 'Login com sucesso' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'
        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: '123'
        click_button 'Login'
        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Senha é invalida!'
    end
    
    it 'usuário não cadastrado' do
        visit '/login'
        fill_in 'userId', with: 'joao'
        fill_in 'password', with: '123'
        click_button 'Login'
        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
    end

end