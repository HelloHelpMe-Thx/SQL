CREATE OR REPLACE PACKAGE PKG_PROFESSOR AS

    FUNCTION PROFESSOR_DISCIPLINA(p_id_disciplina IN NUMBER) RETURN VARCHAR2;

    
    CURSOR TOTAL_TURMAS_POR_PROFESSOR IS
        SELECT p.nome, COUNT(t.id_turma) AS total_turmas
        FROM professores p
        JOIN turmas t ON p.id_professor = t.id_professor
        GROUP BY p.nome
        HAVING COUNT(t.id_turma) > 1;
END PKG_PROFESSOR;
/

CREATE OR REPLACE PACKAGE BODY PKG_PROFESSOR AS
  
    FUNCTION PROFESSOR_DISCIPLINA(p_id_disciplina IN NUMBER) RETURN VARCHAR2 IS
        v_nome VARCHAR2(100);
    BEGIN
        SELECT p.nome
        INTO v_nome
        FROM professores p
        JOIN turmas t ON p.id_professor = t.id_professor
        JOIN disciplinas d ON t.id_disciplina = d.id_disciplina
        WHERE d.id_disciplina = p_id_disciplina;
        
        RETURN v_nome;
    END PROFESSOR_DISCIPLINA;

    
 FUNCTION TOTAL_TURMAS_PROFESSOR(p_id_professor IN NUMBER) RETURN NUMBER IS
        v_total NUMBER;
    BEGIN
        SELECT COUNT(id_turma)
        INTO v_total
        FROM turmas
        WHERE id_professor = p_id_professor;
        RETURN v_total;
    END TOTAL_TURMAS_PROFESSOR;
END PKG_PROFESSOR;
/


    CURSOR TOTAL_TURMAS_POR_PROFESSOR IS
        SELECT p.nome, COUNT(t.id_turma) AS total_turmas
        FROM professores p
        JOIN turmas t ON p.id_professor = t.id_professor
        GROUP BY p.nome
        HAVING COUNT(t.id_turma) > 1;

        CREATE OR REPLACE PACKAGE PKG_PROFESSOR AS
    FUNCTION TOTAL_TURMAS_PROFESSOR(p_id_professor IN NUMBER) RETURN NUMBER;
END PKG_PROFESSOR;
/



END PKG_PROFESSOR;
/
