SELECT TOP 10 TeamCountry, MedalsPerAthlete, AthleteCount, Total
FROM olympic.vw_medal_efficiency
WHERE AthleteCount >= 10
ORDER BY MedalsPerAthlete DESC;