total alunos por diciplina:
possui um cursor que executa uma consulta que retorna o nome das diciplinas e o númeroo de alunis
matriculados nelas, mas somente para aquelas diciplinas que possuem mais de 10 alunos matriculados

total alunos por diciplina:
ele possui um  cursor que retornar os nomes dos alunos de um determinado curso, filtrando pelo id dos cursos
na tabela alunos e  usando a entrada p_id_curso para que possa consultar alunos de qualquer
curso específico

Alunos maiores:
ele possui um cursor que faz uma consulta para retornar os nomes e as datas de nascimento dos alunos
que tem mais de 18 anos, o calculo pega a data atual (usando o SYSDATE para que a data esteja sicronizada
com a data do sistema) menos a data do nacimento

Total turmas por professor:
ele tem um cursor que retorna o nome dos professores e o total de turmas que cada um é responsavel, mas
somente para os professores que é responsavel por mais de uma turma tendo uma função de chamada com o
id de uma disciplina e seu respectivo professor

listar alunos diciplina:
lista os nomes dos alunos matriculados em determinada diciplina

Media idade por diciplina:
ele possui um cursor que calcula a média de idade dos alunos em
determinada diciplina

excluir aluno:
ele deleta o aluno com determinado id





