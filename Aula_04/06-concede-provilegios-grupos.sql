-- ============================================
-- NORTE lê os demais grupos (Nordeste, Centro-Oeste, Sudeste, Sul)
-- ============================================
GRANT SELECT ON `21-maranhao`.*            TO 'norte';
GRANT SELECT ON `22-piaui`.*               TO 'norte';
GRANT SELECT ON `23-ceara`.*               TO 'norte';
GRANT SELECT ON `24-rio_grande_do_norte`.* TO 'norte';
GRANT SELECT ON `25-paraiba`.*             TO 'norte';
GRANT SELECT ON `26-pernambuco`.*          TO 'norte';
GRANT SELECT ON `27-alagoas`.*             TO 'norte';
GRANT SELECT ON `28-sergipe`.*             TO 'norte';
GRANT SELECT ON `29-bahia`.*               TO 'norte';
GRANT SELECT ON `50-mato_grosso_do_sul`.*  TO 'norte';
GRANT SELECT ON `51-mato_grosso`.*        TO 'norte';
GRANT SELECT ON `52-goias`.*              TO 'norte';
GRANT SELECT ON `53-distrito_federal`.*   TO 'norte';
GRANT SELECT ON `31-minas_gerais`.*       TO 'norte';
GRANT SELECT ON `32-espiritosanto`.*      TO 'norte';
GRANT SELECT ON `33-rio_de_janeiro`.*     TO 'norte';
GRANT SELECT ON `35-sao_paulo`.*          TO 'norte';
GRANT SELECT ON `41-parana`.*             TO 'norte';
GRANT SELECT ON `42-santa_catarina`.*     TO 'norte';
GRANT SELECT ON `43-rio_grande_do_sul`.*  TO 'norte';

-- ============================================
-- NORDESTE lê os demais grupos (Norte, Centro-Oeste, Sudeste, Sul)
-- ============================================
GRANT SELECT ON `11-rondonia`.*           TO 'nordeste';
GRANT SELECT ON `12-acre`.*               TO 'nordeste';
GRANT SELECT ON `13-amazonas`.*           TO 'nordeste';
GRANT SELECT ON `14-roraima`.*            TO 'nordeste';
GRANT SELECT ON `15-para`.*               TO 'nordeste';
GRANT SELECT ON `16-amapa`.*              TO 'nordeste';
GRANT SELECT ON `17-tocantins`.*          TO 'nordeste';
GRANT SELECT ON `50-mato_grosso_do_sul`.* TO 'nordeste';
GRANT SELECT ON `51-mato_grosso`.*       TO 'nordeste';
GRANT SELECT ON `52-goias`.*             TO 'nordeste';
GRANT SELECT ON `53-distrito_federal`.*  TO 'nordeste';
GRANT SELECT ON `31-minas_gerais`.*      TO 'nordeste';
GRANT SELECT ON `32-espiritosanto`.*     TO 'nordeste';
GRANT SELECT ON `33-rio_de_janeiro`.*    TO 'nordeste';
GRANT SELECT ON `35-sao_paulo`.*         TO 'nordeste';
GRANT SELECT ON `41-parana`.*            TO 'nordeste';
GRANT SELECT ON `42-santa_catarina`.*    TO 'nordeste';
GRANT SELECT ON `43-rio_grande_do_sul`.* TO 'nordeste';

-- ============================================
-- CENTRO-OESTE lê os demais grupos (Norte, Nordeste, Sudeste, Sul)
-- ============================================
GRANT SELECT ON `11-rondonia`.*           TO 'centro_oeste';
GRANT SELECT ON `12-acre`.*               TO 'centro_oeste';
GRANT SELECT ON `13-amazonas`.*           TO 'centro_oeste';
GRANT SELECT ON `14-roraima`.*            TO 'centro_oeste';
GRANT SELECT ON `15-para`.*               TO 'centro_oeste';
GRANT SELECT ON `16-amapa`.*              TO 'centro_oeste';
GRANT SELECT ON `17-tocantins`.*          TO 'centro_oeste';
GRANT SELECT ON `21-maranhao`.*           TO 'centro_oeste';
GRANT SELECT ON `22-piaui`.*              TO 'centro_oeste';
GRANT SELECT ON `23-ceara`.*              TO 'centro_oeste';
GRANT SELECT ON `24-rio_grande_do_norte`.* TO 'centro_oeste';
GRANT SELECT ON `25-paraiba`.*            TO 'centro_oeste';
GRANT SELECT ON `26-pernambuco`.*         TO 'centro_oeste';
GRANT SELECT ON `27-alagoas`.*            TO 'centro_oeste';
GRANT SELECT ON `28-sergipe`.*            TO 'centro_oeste';
GRANT SELECT ON `29-bahia`.*              TO 'centro_oeste';
GRANT SELECT ON `31-minas_gerais`.*       TO 'centro_oeste';
GRANT SELECT ON `32-espiritosanto`.*      TO 'centro_oeste';
GRANT SELECT ON `33-rio_de_janeiro`.*     TO 'centro_oeste';
GRANT SELECT ON `35-sao_paulo`.*          TO 'centro_oeste';
GRANT SELECT ON `41-parana`.*             TO 'centro_oeste';
GRANT SELECT ON `42-santa_catarina`.*     TO 'centro_oeste';
GRANT SELECT ON `43-rio_grande_do_sul`.*  TO 'centro_oeste';

-- ============================================
-- SUDESTE lê os demais grupos (Norte, Nordeste, Centro-Oeste, Sul)
-- ============================================
GRANT SELECT ON `11-rondonia`.*           TO 'sudeste';
GRANT SELECT ON `12-acre`.*               TO 'sudeste';
GRANT SELECT ON `13-amazonas`.*           TO 'sudeste';
GRANT SELECT ON `14-roraima`.*            TO 'sudeste';
GRANT SELECT ON `15-para`.*               TO 'sudeste';
GRANT SELECT ON `16-amapa`.*              TO 'sudeste';
GRANT SELECT ON `17-tocantins`.*          TO 'sudeste';
GRANT SELECT ON `21-maranhao`.*           TO 'sudeste';
GRANT SELECT ON `22-piaui`.*              TO 'sudeste';
GRANT SELECT ON `23-ceara`.*              TO 'sudeste';
GRANT SELECT ON `24-rio_grande_do_norte`.* TO 'sudeste';
GRANT SELECT ON `25-paraiba`.*            TO 'sudeste';
GRANT SELECT ON `26-pernambuco`.*         TO 'sudeste';
GRANT SELECT ON `27-alagoas`.*            TO 'sudeste';
GRANT SELECT ON `28-sergipe`.*            TO 'sudeste';
GRANT SELECT ON `29-bahia`.*              TO 'sudeste';
GRANT SELECT ON `50-mato_grosso_do_sul`.* TO 'sudeste';
GRANT SELECT ON `51-mato_grosso`.*       TO 'sudeste';
GRANT SELECT ON `52-goias`.*             TO 'sudeste';
GRANT SELECT ON `53-distrito_federal`.*  TO 'sudeste';
GRANT SELECT ON `41-parana`.*            TO 'sudeste';
GRANT SELECT ON `42-santa_catarina`.*    TO 'sudeste';
GRANT SELECT ON `43-rio_grande_do_sul`.* TO 'sudeste';

-- ============================================
-- SUL lê os demais grupos (Norte, Nordeste, Centro-Oeste, Sudeste)
-- ============================================
GRANT SELECT ON `11-rondonia`.*           TO 'sul';
GRANT SELECT ON `12-acre`.*               TO 'sul';
GRANT SELECT ON `13-amazonas`.*           TO 'sul';
GRANT SELECT ON `14-roraima`.*            TO 'sul';
GRANT SELECT ON `15-para`.*               TO 'sul';
GRANT SELECT ON `16-amapa`.*              TO 'sul';
GRANT SELECT ON `17-tocantins`.*          TO 'sul';
GRANT SELECT ON `21-maranhao`.*           TO 'sul';
GRANT SELECT ON `22-piaui`.*              TO 'sul';
GRANT SELECT ON `23-ceara`.*              TO 'sul';
GRANT SELECT ON `24-rio_grande_do_norte`.* TO 'sul';
GRANT SELECT ON `25-paraiba`.*            TO 'sul';
GRANT SELECT ON `26-pernambuco`.*         TO 'sul';
GRANT SELECT ON `27-alagoas`.*            TO 'sul';
GRANT SELECT ON `28-sergipe`.*            TO 'sul';
GRANT SELECT ON `29-bahia`.*              TO 'sul';
GRANT SELECT ON `50-mato_grosso_do_sul`.* TO 'sul';
GRANT SELECT ON `51-mato_grosso`.*       TO 'sul';
GRANT SELECT ON `52-goias`.*             TO 'sul';
GRANT SELECT ON `53-distrito_federal`.*  TO 'sul';
GRANT SELECT ON `31-minas_gerais`.*      TO 'sul';
GRANT SELECT ON `32-espiritosanto`.*     TO 'sul';
GRANT SELECT ON `33-rio_de_janeiro`.*    TO 'sul';
GRANT SELECT ON `35-sao_paulo`.*         TO 'sul';
