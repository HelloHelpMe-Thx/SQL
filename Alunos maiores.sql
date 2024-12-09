CREATE OR REPLACE PACKAGE PKG_ALUNO AS
    CURSOR ALUNOS_MAIORES_DE_18 IS
        SELECT nome, data_nascimento
        FROM alunos
        WHERE (SYSDATE - data_nascimento) / 365 > 18;
END PKG_ALUNO;

    CURSOR ALUNOS_MAIORES_DE_18 IS
        SELECT nome, data_nascimento
        FROM alunos
        WHERE (SYSDATE - data_nascimento) / 365 > 18;
END PKG_ALUNO;

        CURSOR TOTAL_ALUNOS_POR_DISCIPLINA IS
        SELECT d.nome, COUNT(m.id_aluno) AS total_alunos
        FROM disciplinas d
        JOIN matriculas m ON d.id_disciplina = m.id_disciplina
        GROUP BY d.nome
        HAVING COUNT(m.id_aluno) > 10;
END PKG_DISCIPLINA;

/
