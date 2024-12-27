class ToDoList
  def start
    exibe_menu
    escolha = gets.chomp.to_i
    case escolha
      when 1 then 
      when 2 then
      when 3 then
      when 4 then
      when 5 
      else
    end
  end

  private

  def exibe_menu
    puts "\n==== ToDo List ===="
    puts "1. Adiciona Tarefa"
    puts "2. Listar Tarefas"
    puts "3. Marcar Tarefa como Concluída"
    puts "4. Remover Tarefa"
    puts "5. Sair"
    puts "Escolha uma opção: "
  end
end

ToDoList.new.start