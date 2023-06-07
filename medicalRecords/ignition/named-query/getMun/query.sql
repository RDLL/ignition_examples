DECLARE @ID NVARCHAR(50)
SELECT @ID = EstadoId FROM Estado WHERE Nombre = :entidad
SELECT * FROM Municipio 
WHERE Entidad = @ID