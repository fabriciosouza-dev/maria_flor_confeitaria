namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      show_spinner("Cadastrando Admin...") { %x(rails dev:add_default_admin) }
      show_spinner("Cadastrando User...") { %x(rails dev:add_default_user) }
      # show_spinner("xxxxxxxx...") { %x(rails dev:xxxxxxx) }
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
        email: 'maria_flor@admin.com',
        password: 'maria_flor.1',
        password_confirmation: 'maria_flor.1'
    )
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do
    User.create!(
        email: 'maria_flor@user.com',
        password: 'maria_flor.1',
        password_confirmation: 'maria_flor.1'
    )
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
