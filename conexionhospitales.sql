-- Crear tabla Gerente
CREATE TABLE gerente (
    idGerente INT PRIMARY KEY,
    descGerente VARCHAR(255),
    fechaRegistro DATE
);

-- Crear tabla Sede
CREATE TABLE sede (
    idSede INT PRIMARY KEY,
    descSede VARCHAR(255),
    fechaRegistro DATE
);

-- Crear tabla Provincia
CREATE TABLE provincia (
    idProvincia INT PRIMARY KEY,
    descProvincia VARCHAR(255),
    fechaRegistro DATE
);

-- Crear tabla Distrito
CREATE TABLE distrito (
    idDistrito INT PRIMARY KEY,
    idProvincia INT REFERENCES provincia(idProvincia),
    descDistrito VARCHAR(255),
    fechaRegistro DATE
);



-- Crear tabla Condicion
CREATE TABLE condicion (
    idCondicion INT PRIMARY KEY,
    descCondicion VARCHAR(255),
    fechaRegistro DATE
);

-- Crear tabla Hospital
CREATE TABLE hospital (
    idHospital INT PRIMARY KEY,
    idDistrito INT REFERENCES distrito(idDistrito),
    nombre VARCHAR(255),
    antiguedad INT,
    area INT,
    areaDecimal DECIMAL(5,2),
    idSede INT REFERENCES sede(idSede),
    idGerente INT REFERENCES gerente(idGerente),
    idCondicion INT REFERENCES condicion(idCondicion),
    fechaRegistro DATE
);

-- Inserción en la tabla Gerente
INSERT INTO gerente (idGerente, descGerente, fechaRegistro)
SELECT 1, 'Juan Pérez', TO_DATE('08-05-2002', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 2, 'María González', TO_DATE('17-12-2005', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 3, 'Luis Rodríguez', TO_DATE('14-11-2008', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 4, 'Alexandre Huarcaya', TO_DATE('07-12-2010', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 5, 'Junior Saire', TO_DATE('09-06-2014', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 6, 'Frank Vargas', TO_DATE('10-04-2015', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 7, 'Luis Quispe', TO_DATE('22-03-2016', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 8, 'Rosa Espinoza', TO_DATE('11-08-2018', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 9, 'Mirian Ortiz', TO_DATE('17-04-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 10, 'Mafer Orue', TO_DATE('24-02-2020', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 11, 'Fernando Suarez', TO_DATE('21-03-2018', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 12, 'Dalton Emirrof', TO_DATE('15-02-2019', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 13, 'Wilson Holguin', TO_DATE('14-02-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 14, 'Anthony Inquiltupa', TO_DATE('12-01-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 15, 'Ana Martínez', TO_DATE('2-02-2024', 'DD-MM-YYYY') FROM DUAL;

-- Inserción en la tabla Condicion
INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro)
SELECT 1, 'Optimo', TO_DATE('06-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 2, 'Adecuado', TO_DATE('08-12-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 3, 'Regular', TO_DATE('10-09-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 4, 'Deficiente', TO_DATE('05-10-2023', 'DD-MM-YYYY') FROM DUAL;

-- Inserción en la tabla Provincia
INSERT INTO provincia (idProvincia, descProvincia, fechaRegistro)
SELECT 1, 'Lima', TO_DATE('12-05-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 2, 'Cajatambo', TO_DATE('22-12-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 3, 'Barranca', TO_DATE('23-03-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 4, 'Huaura', TO_DATE('13-11-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 5, 'Canta', TO_DATE('11-01-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 6, 'Huarochiri', TO_DATE('12-04-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 7, 'Yauyos', TO_DATE('07-07-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 8, 'Oyon', TO_DATE('12-01-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 9, 'Huaral', TO_DATE('07-02-2021', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 10, 'Canete', TO_DATE('01-06-2024', 'DD-MM-YYYY') FROM DUAL;

-- Inserción en la tabla Distrito

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro)
SELECT 1, 1, 'Miraflores', TO_DATE('07-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 2, 1, 'La Victoria', TO_DATE('07-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 3, 2, 'Gorgor', TO_DATE('12-04-2021', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 4, 2, 'Huancapón', TO_DATE('12-04-2021', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 5, 3, 'Supe', TO_DATE('13-06-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 6, 3, 'Pativilca', TO_DATE('13-06-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 7, 4, 'Huacho', TO_DATE('02-02-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 8, 4, 'Santa María', TO_DATE('02-02-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 9, 5, 'Canta', TO_DATE('14-12-2021', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 10, 5, 'San Buenaventura', TO_DATE('14-12-2021', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 11, 6, 'Huarochiri', TO_DATE('17-07-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 12, 6, 'Matucana', TO_DATE('17-07-2022', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 13, 7, 'Yauyos', TO_DATE('21-04-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 14, 7, 'Putinza', TO_DATE('21-04-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 15, 8, 'Oyon', TO_DATE('01-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 16, 8, 'Andajes', TO_DATE('01-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 17, 9, 'Huaral', TO_DATE('02-01-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 18, 9, 'San Gabriel', TO_DATE('02-01-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 19, 10, 'Canete', TO_DATE('13-11-2023', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 20, 10, 'Arahuay', TO_DATE('13-11-2023', 'DD-MM-YYYY') FROM DUAL;


-- Inserción en la tabla Sede
INSERT INTO sede (idSede, descSede, fechaRegistro)
SELECT 1, 'Sede Principal', TO_DATE('07-02-2024', 'DD-MM-YYYY') FROM DUAL UNION ALL
SELECT 2, 'Sede Secundario', TO_DATE('23-11-2023', 'DD-MM-YYYY') FROM DUAL;




