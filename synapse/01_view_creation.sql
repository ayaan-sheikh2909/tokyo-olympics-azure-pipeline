CREATE SCHEMA olympic
GO

CREATE VIEW olympic.vw_athletes AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/athletes.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_coaches AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/coaches.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_medals AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/medals.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_teams AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/teams.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_entries_gender AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/entriesgender.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_medal_efficiency AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/medal_efficiency.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO

CREATE VIEW olympic.vw_gender_parity_index AS
SELECT *
FROM OPENROWSET(
    BULK 'https://tokyoolympicdatasheikh.dfs.core.windows.net/tokyo-olympic-data/transformed-data/gender_parity_index.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result
GO