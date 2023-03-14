CREATE TABLE tb_usuario (
    id int(11) NOT NULL AUTO_INCREMENT,
    user varchar(12) NOT NULL,
    hash varchar(30) NOT NULL,
    class int(11) DEFAULT NULL,
    nome varchar(40) DEFAULT NULL,
    email varchar(70) DEFAULT NULL,
    cel varchar(14) DEFAULT NULL,
    db varchar(10) DEFAULT NULL,
    modulos varchar(30) DEFAULT NULL,
	UNIQUE KEY (user),
    PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO tb_usuario VALUES (DEFAULT,"tales","IFi:2r'|S*#V-%Y0(¨3+_6.b91e<4h",10,null,null,null,"QwQTlQtjDKYPknQ`UNQRWf7.oQeg;a?XxZxt^QpTcQiyRqXI","2,10");

-- DROP TABLE tb_sistemas;
CREATE TABLE tb_sistemas (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descri VARCHAR(255) DEFAULT "",
    url VARCHAR(255) DEFAULT "",
    PRIMARY KEY (id)
)  ENGINE=MYISAM AUTO_INCREMENT=0 DEFAULT CHARSET=UTF8;

-- DROP TABLE tb_database;
CREATE TABLE tb_database (
    id_sistema int(11) NOT NULL,
    id_cliente int(11) NOT NULL,
    db_nome varchar(50) DEFAULT NULL,
    db_host varchar(50) DEFAULT NULL,
    db_user varchar(50) DEFAULT NULL,
    db_pass varchar(50) DEFAULT NULL,    
    PRIMARY KEY (id_sistema,id_cliente),
    FOREIGN KEY (id_sistema) REFERENCES tb_sistemas(id),
    FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- DROP TABLE tb_modulos;
CREATE TABLE tb_modulos (
    id int(11) NOT NULL AUTO_INCREMENT,
    id_sistema int(11) NOT NULL,
    nome varchar(40) DEFAULT NULL,
    cod int(11) DEFAULT NULL,    
    PRIMARY KEY (id),
    FOREIGN KEY (id_sistema) REFERENCES tb_sistemas(id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- DROP TABLE tb_clientes;
CREATE TABLE tb_clientes(
    id int(11) NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    fantasia varchar(40) DEFAULT null,
    tipo varchar(3) DEFAULT NULL,
    cnpj_cpf varchar(18) DEFAULT NULL,
    ie varchar(15) DEFAULT NULL,
    im varchar(15) DEFAULT NULL,
    endereco varchar(60) DEFAULT NULL,
    num varchar(6) DEFAULT NULL,
    bairro varchar(50) DEFAULT NULL,
    cep varchar(10) DEFAULT NULL,
    cidade varchar(30) DEFAULT NULL,
    estado varchar(2) DEFAULT NULL,
    tel varchar(15) DEFAULT NULL,
    bco_nome varchar(15) DEFAULT NULL,
    bco_ag varchar(6) DEFAULT NULL,
    bco_cc varchar(15) DEFAULT NULL,
	bco_pix varchar(40) DEFAULT NULL,
    modal varchar(5) DEFAULT "FORN",
    whatsapp varchar(15) DEFAULT NULL,    
	UNIQUE KEY (nome),
    PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE tb_mail(
    id INT NOT NULL AUTO_INCREMENT,
    de int(11) NOT NULL,
    para int(11) NOT NULL,
    nao_lida BOOLEAN DEFAULT TRUE,
    txt VARCHAR(255) NOT NULL DEFAULT "",
    data datetime DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (de) REFERENCES tb_usuario(id),
    FOREIGN KEY (para) REFERENCES tb_usuario(id),
    PRIMARY KEY(id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;