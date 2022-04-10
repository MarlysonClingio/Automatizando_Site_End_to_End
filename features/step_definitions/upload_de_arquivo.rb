Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'

    @foto = File.join(Dir.pwd, 'features/FotoPerfil2-Marlyson.jpeg')
    attach_file('upload', @foto, make_visible: true)
    sleep 3
end