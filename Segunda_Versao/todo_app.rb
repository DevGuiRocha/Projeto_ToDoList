class ToDoApp
  def start
    show_menu
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
end

ToDoApp.new.start