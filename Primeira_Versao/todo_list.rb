class ToDoList
  def initialize
    @task = []
  end

  def start
    loop do
      exibe_menu
      escolha = gets.chomp.to_i

      case escolha
        when 1 then adiciona_task
        when 2 then lista_task
        when 3 then atualiza_task
        when 4 then remove_task
        when 5 
          puts "Encerrando o programa... Até Logo!!"
          break
        else
          puts "Opção inválida!! Selecione de acordo com o menu..."
      end
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

  def lista_task
    if @task.empty?
      puts "Nenhuma tarefa cadastrada. Cadastre uma antes de exibir!!"
    else
      puts "\n=== Tasks ==="
      
      @task.each_with_index do |task, index|
        status = task[:completed] ? "[X]" : "[ ]"
        puts "#{index + 1}. #{status} #{task[:title]}"
        puts "Descrição -> #{task[:description]}"
      end
    end
  end

  def atualiza_task
    lista_task
    unless @task.empty?
      puts "Informe o número da task que deseja atualizar:"
      index = gets.chomp.to_i - 1

      if index_valido?(index)
        @task[index][:completed] = true
        puts "Tarefa concluída com sucesso!!"
      else
        puts "Tarefa Inválida!!"
      end
    end
  end

  def remove_task
    lista_task
    unless @task.empty?
      puts "Informe o número da task que deseja apagar:"
      index = gets.chomp.to_i - 1

      if index_valido?(index)
        puts "TEM CERTEZA? NÃO É POSSÍVEL RECUPERAR APÓS EXCLUSÃO [S/N]"
        confirmacao = gets.chomp.to_s
        if confirmacao == 's' || confirmacao == 'S'
          @task.delete_at(index)
          puts "Tarefa excluída com sucesso!!"
        else
          puts "Nenhuma tarefa alterada!!"
        end
      else
        puts "Task inválida!!"
      end
    end
  end

  def index_valido?(index)
    index >=0 && index < @task.size
  end
end

ToDoList.new.start