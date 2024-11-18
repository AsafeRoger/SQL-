SELECT PrimeiroNome, UltimoNome
FROM Funcionarios
ORDER BY UltimoNome;

SELECT *
FROM Funcionarios
ORDER BY Cidade;

SELECT PrimeiroNome, SegundoNome, UltimoNome, Salario
FROM Funcionarios
WHERE Salario > 1000
ORDER BY PrimeiroNome, SegundoNome, UltimoNome;

SELECT PrimeiroNome, DataNasci
FROM Funcionarios
ORDER BY DataNasci DESC;

SELECT CONCAT(PrimeiroNome, ' ', UltimoNome) AS NomeCompleto, Fone
FROM Funcionarios
ORDER BY Fone;

SELECT SUM(Salario) AS TotalFolhaPagamento
FROM Funcionarios;

SELECT f.PrimeiroNome, f.SegundoNome, f.UltimoNome, d.Nome AS NomeDepartamento, f.Funcao
FROM Funcionarios f
JOIN Departamentos d ON f.CodigoDepartamento = d.Codigo;

SELECT d.Nome AS NomeDepartamento, f.PrimeiroNome, f.UltimoNome AS NomeGerente
FROM Departamentos d
JOIN Funcionarios f ON d.CodigoFuncionarioGerente = f.Codigo;

SELECT d.Nome AS NomeDepartamento, SUM(f.Salario) AS FolhaPagamento
FROM Funcionarios f
JOIN Departamentos d ON f.CodigoDepartamento = d.Codigo
GROUP BY d.Nome;

SELECT DISTINCT d.Nome AS Departamento
FROM Funcionarios f
JOIN Departamentos d ON f.CodigoDepartamento = d.Codigo
WHERE f.Funcao = 'Supervisor';

SELECT COUNT(*) AS QuantidadeFuncionarios
FROM Funcionarios;

SELECT AVG(Salario) AS SalarioMedio
FROM Funcionarios;

SELECT PrimeiroNome, SegundoNome, UltimoNome
FROM Funcionarios
WHERE Cidade = 'Recife' AND Funcao = 'Telefonista';

SELECT d.Nome AS NomeDepartamento, f.PrimeiroNome, f.SegundoNome, f.UltimoNome
FROM Funcionarios f
JOIN Departamentos d ON f.CodigoDepartamento = d.Codigo
ORDER BY d.Nome, f.PrimeiroNome, f.SegundoNome, f.UltimoNome;

SELECT CONCAT(PrimeiroNome, ' ', UltimoNome) AS NomeCompleto
FROM Funcionarios
WHERE SegundoNome IS NULL OR SegundoNome = '';

SELECT d.Nome AS NomeDepartamento, MIN(f.Salario) AS MenorSalario
FROM Funcionarios f
JOIN Departamentos d ON f.CodigoDepartamento = d.Codigo
GROUP BY d.Nome;


