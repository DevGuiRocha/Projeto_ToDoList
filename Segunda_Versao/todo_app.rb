class ToDoApp
  def start
    loop do
      show_menu
      escolha = gets.chomp.to_i
      verifica_escolha(escolha)
    end
  end

  private

  def show_menu
    puts "\n==== ToDo List ===="
    puts "1. Adicionar Tarefa"
    puts "2. Listar Tarefas"
    puts "3. Marcar Tarefa como Concluída"
    puts "4. Remover Tarefa"
    puts "5. Sair"
    print "Escolha uma opção: "
  end

  def verifica_escolha(escolha)
    case escolha
      when 1 then
      when 2 then
      when 3 then
      when 4 then
      when 5 then
        puts "Programa sendo encerrado. Até Breve!!"
        exit
      else
        puts "Opção incorreta, tente novamente"
    end
  end
end

ToDoApp.new.start