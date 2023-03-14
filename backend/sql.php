<?php

$query_db = array(
    "0"  => 'SELECT * FROM tb_usuario WHERE (user = "x00" OR email = "x00") AND hash = "x01";',
    "1"  => 'INSERT INTO tb_clientes (id,nome,fantasia,tipo,cnpj_cpf,ie,im,endereco,num,bairro,cep,cidade,estado,tel,bco_nome,bco_ag,bco_cc,bco_pix,modal,whatsapp) 
        VALUES (x00,"x01","x02","x03","x04","x05","x06","x07","x08","x09","x10","x11","x12","x13","x14","x15","x16","x17","x18","x19")
        ON DUPLICATE KEY UPDATE nome="x01",fantasia="x02",tipo="x03",cnpj_cpf="x04",ie="x05",im="x06",endereco="x07",num="x08",bairro="x09",cep="x10",cidade="x11",
        estado="x12",tel="x13",bco_nome="x14",bco_ag="x15",bco_cc="x16",bco_pix="x17",modal="x18",whatsapp="x19";',
    "2"  => 'SELECT * FROM tb_clientes WHERE x00 x01 x02 order by nome;',
    "3" => 'SELECT MAIL.*, USER.nome AS remetente
        FROM tb_mail AS MAIL 
        INNER JOIN tb_usuario AS USER
        ON MAIL.de=USER.id
        AND MAIL.para=x00
        ORDER BY MAIL.id DESC;',
    "4" => 'SELECT * FROM tb_usuario WHERE (SELECT U.class FROM tb_usuario AS U WHERE hash="x00") IN (10) ORDER BY nome;',
    "5" => 'INSERT INTO tb_usuario (id, user, hash, class, nome, email, cel, db, modulos) VALUES (x00, "x01", "x02", "x03", "x04", "x05", "x06", "x07", "x08") 
        ON DUPLICATE KEY UPDATE user="x01", hash="x02", class="x03", nome="x04", email="x05", cel="x06";',
    "6" => 'DELETE FROM tb_usuario WHERE id="x00";',
    "7" => 'SELECT * FROM tb_sistemas WHERE (SELECT U.class FROM tb_usuario AS U WHERE hash="x00") IN (10) ORDER BY nome;',
    "8" => "INSERT INTO tb_sistemas (id, nome, descri, url) VALUES (x00, 'x01', 'x02', 'x03') 
        ON DUPLICATE KEY UPDATE nome='x01', descri='x02', url='x03';",
    "9" => 'DELETE FROM tb_sistemas WHERE id="x00";',    
    "10" => 'SELECT DB.*, CLI.fantasia AS cliente, SIS.nome AS sistema 
        FROM tb_database as DB
        INNER JOIN tb_clientes AS CLI
        INNER JOIN tb_sistemas AS SIS
        ON DB.id_sistema = SIS.id
        AND DB.id_cliente = CLI.id
        AND x00 x01 x02;',
    "11" => "INSERT INTO tb_database (id_sistema, id_cliente, db_nome, db_host, db_user, db_pass) VALUES ('x00', 'x01', 'x02', 'x03', 'x04', 'x05') 
        ON DUPLICATE KEY UPDATE  db_nome='x02', db_host='x03', db_user='x04', db_pass='x05';",
    "12" => 'DELETE FROM tb_database WHERE id="x00";',


    );

?>