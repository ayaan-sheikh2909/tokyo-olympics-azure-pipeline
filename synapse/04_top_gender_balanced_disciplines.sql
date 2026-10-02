SELECT TOP 10 Discipline, ParityIndex, Female, Male, Total
FROM olympic.vw_gender_parity_index
ORDER BY ParityIndex DESC;