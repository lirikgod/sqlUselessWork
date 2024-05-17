CREATE VIEW VIEW_зан_дол AS
SELECT 
    История_работы.Номер_отдела,
    История_работы.Номер_должности,
    COUNT(*) AS Занятых_единиц
FROM 
    История_работы
WHERE 
    История_работы.Дата_увольнения IS NULL
GROUP BY 
    История_работы.Номер_отдела,
    История_работы.Номер_должности;