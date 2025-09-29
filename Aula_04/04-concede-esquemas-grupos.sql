-- ================================================
-- Associação dos esquemas (databases) aos roles
-- Roles criadas previamente:
--   norte, nordeste, centro_oeste, sudeste, sul
-- ================================================

-- >>>>> REGIÃO NORTE >>>>>>>>>>>>>>

GRANT ALL PRIVILEGES ON `11-rondonia`.*       TO 'norte';
GRANT ALL PRIVILEGES ON `12-acre`.*           TO 'norte';
GRANT ALL PRIVILEGES ON `13-amazonas`.*       TO 'norte';
GRANT ALL PRIVILEGES ON `14-roraima`.*        TO 'norte';
GRANT ALL PRIVILEGES ON `15-para`.*           TO 'norte';
GRANT ALL PRIVILEGES ON `16-amapa`.*          TO 'norte';
GRANT ALL PRIVILEGES ON `17-tocantins`.*      TO 'norte';

-- >>>>> REGIÃO NORDESTE >>>>>>>>>>>>>>

GRANT ALL PRIVILEGES ON `21-maranhao`.*            TO 'nordeste';
GRANT ALL PRIVILEGES ON `22-piaui`.*               TO 'nordeste';
GRANT ALL PRIVILEGES ON `23-ceara`.*               TO 'nordeste';
GRANT ALL PRIVILEGES ON `24-rio_grande_do_norte`.* TO 'nordeste';
GRANT ALL PRIVILEGES ON `25-paraiba`.*             TO 'nordeste';
GRANT ALL PRIVILEGES ON `26-pernambuco`.*          TO 'nordeste';
GRANT ALL PRIVILEGES ON `27-alagoas`.*             TO 'nordeste';
GRANT ALL PRIVILEGES ON `28-sergipe`.*             TO 'nordeste';
GRANT ALL PRIVILEGES ON `29-bahia`.*               TO 'nordeste';

-- >>>>> REGIÃO CENTRO_OESTE >>>>>>>>>>>>>>

GRANT ALL PRIVILEGES ON `50-mato_grosso_do_sul`.* TO 'centro_oeste';
GRANT ALL PRIVILEGES ON `51-mato_grosso`.*       TO 'centro_oeste';
GRANT ALL PRIVILEGES ON `52-goias`.*             TO 'centro_oeste';
GRANT ALL PRIVILEGES ON `53-distrito_federal`.*  TO 'centro_oeste';

-- >>>>> REGIÃO SUDESTE >>>>>>>>>>>>>>

GRANT ALL PRIVILEGES ON `31-minas_gerais`.*   TO 'sudeste';
GRANT ALL PRIVILEGES ON `32-espiritosanto`.*  TO 'sudeste';
GRANT ALL PRIVILEGES ON `33-rio_de_janeiro`.* TO 'sudeste';
GRANT ALL PRIVILEGES ON `35-sao_paulo`.*      TO 'sudeste';

-- >>>>> REGIÃO SUL >>>>>>>>>>>>>>

GRANT ALL PRIVILEGES ON `41-parana`.*            TO 'sul';
GRANT ALL PRIVILEGES ON `42-santa_catarina`.*    TO 'sul';
GRANT ALL PRIVILEGES ON `43-rio_grande_do_sul`.* TO 'sul';
