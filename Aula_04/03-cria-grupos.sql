-- ===========================================
-- Criação de roles para as 5 regiões do Brasil
-- ===========================================

CREATE ROLE 'norte';
CREATE ROLE 'nordeste';
CREATE ROLE 'centro_oeste';
CREATE ROLE 'sudeste';
CREATE ROLE 'sul';

-- ===========================================
/*
Concedendo privilégios de leitura (SELECT) a cada grupo criado
*/
-- ===========================================

GRANT SELECT ON *.* TO 'norte';
GRANT SELECT ON *.* TO 'nordeste';
GRANT SELECT ON *.* TO 'centro_oeste';
GRANT SELECT ON *.* TO 'sudeste';
GRANT SELECT ON *.* TO 'sul';

-- ===========================================
-- Para atribuir um role a um usuário:
-- ===========================================
-- GRANT 'norte' TO 'usuario_exemplo'@'%';
-- SET DEFAULT ROLE 'norte' TO 'usuario_exemplo'@'%';
