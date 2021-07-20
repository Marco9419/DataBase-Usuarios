CREATE TABLE usuarios(

    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    pass VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY (id)
);

-- Agregamos restriccion a email
    ALTER TABLE usuarios ADD CONSTRAINT uq_email UNIQUE(email);


   -- Creamos tabla categorias
    CREATE TABLE categorias(
        id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(100) NOT NULL,
        CONSTRAINT pk_cateogiras PRIMARY KEY (id)
    );


-- Creamos tabla entradas
     CREATE TABLE entradas(
        id INT NOT NULL AUTO_INCREMENT,
        usuario_id  INT NOT NULL,
        categoria_id INT NOT NULL,
        titulo VARCHAR(200) NOT NULL,
        descripcion TEXT,
        fecha DATE NOT NULL,
        CONSTRAINT pk_entradas PRIMARY KEY (id),
        CONSTRAINT fk_entradas_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
        CONSTRAINT fk_entradas_categoria FOREIGN KEY (categoria_id) REFERENCES categoria(id)
    );

 
