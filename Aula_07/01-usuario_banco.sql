
-- CRIAR USUÁRIO LOCAL E CONCEDER PERMISSÕES
-- Troque 'MinhaSenhaForte' por uma senha segura


CREATE USER IF NOT EXISTS 'pessoas_user'@'localhost' IDENTIFIED BY 'MinhaSenhaForte';

GRANT ALL PRIVILEGES ON pessoasdb.* TO 'pessoas_user'@'localhost';

FLUSH PRIVILEGES;