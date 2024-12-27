class ToDoList
  def initialize
    @task = []
  end

  def start
    exibe_menu
    escolha = gets.chomp.to_i
    case escolha
      when 1 then adiciona_task
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

  def adiciona_task
    puts "Digite o título da tarefa:"
    titulo = gets.chomp
    puts "Digite a descrição da tarefa:"
    descricao = gets.chomp
    @task << { title: titulo, description: descricao, completed: false }
    puts "Tarefa adicionada com sucesso"
  end
end

ToDoList.new.start