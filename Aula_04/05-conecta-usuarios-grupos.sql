-- =========================================
-- Associação de usuários aos roles (grupos)
-- =========================================

-- Grupo Norte
GRANT 'norte' TO 'f362bf0'@'%';
GRANT 'norte' TO 'r536fa6'@'%';

-- Grupo Nordeste
GRANT 'nordeste' TO 'h756960'@'%';
GRANT 'nordeste' TO 'r8133g7'@'%';

-- Grupo Centro-Oeste
GRANT 'centro_oeste' TO 'r837aa0'@'%';
GRANT 'centro_oeste' TO 'h714419'@'%';

-- Grupo Sudeste
GRANT 'sudeste' TO 'r854124'@'%';
GRANT 'sudeste' TO 'n0296a6'@'%';

-- Grupo Sul
GRANT 'sul' TO 'h788986'@'%';
GRANT 'sul' TO 'h77gii5'@'%';
GRANT 'sul' TO 'f3648i0'@'%';

-- (Opcional) Definir cada role como padrão para o usuário
SET DEFAULT ROLE ALL TO
    'f362bf0'@'%',
    'r536fa6'@'%',
    'h756960'@'%',
    'r8133g7'@'%',
    'r837aa0'@'%',
    'h714419'@'%',
    'r854124'@'%',
    'n0296a6'@'%',
    'h788986'@'%',
    'h77gii5'@'%',
    'f3648i0'@'%';
