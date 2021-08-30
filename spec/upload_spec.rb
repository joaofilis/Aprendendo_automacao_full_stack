describe 'Upload de arquivos', :upload do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/data/arquivo.txt'
        @imagem = Dir.pwd + '/spec/data/imagem.png'
    end

    it 'upload de arquivo de texto', :upload_arquivo do
        # Primeiro parametro identifica qual o id do botão onde irá fazer upload, segundo parametro é o arquivo que irá anexar
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        img = find('#new-image')
        expect(img[:src]).to include 'imagem.png'
    end
end