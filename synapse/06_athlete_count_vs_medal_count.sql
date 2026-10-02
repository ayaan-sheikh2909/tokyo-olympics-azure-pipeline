SELECT TeamCountry, AthleteCount, Total
FROM olympic.vw_medal_efficiency
WHERE Total > 0
ORDER BY AthleteCount DESC;