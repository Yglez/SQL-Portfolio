--Column Names
SELECT TOP (1000) [iso_code]
      ,[continent]
      ,[location]
      ,[date]
      ,[population]
      ,[total_cases]
      ,[new_cases]
      ,[new_cases_smoothed]
      ,[total_deaths]
      ,[new_deaths]
      ,[new_deaths_smoothed]
      ,[total_cases_per_million]
      ,[new_cases_per_million]
      ,[new_cases_smoothed_per_million]
      ,[total_deaths_per_million]
      ,[new_deaths_per_million]
      ,[new_deaths_smoothed_per_million]
      ,[reproduction_rate]
      ,[icu_patients]
      ,[icu_patients_per_million]
      ,[hosp_patients]
      ,[hosp_patients_per_million]
      ,[weekly_icu_admissions]
      ,[weekly_icu_admissions_per_million]
      ,[weekly_hosp_admissions]
      ,[weekly_hosp_admissions_per_million]
  FROM [PortfolioProject].[dbo].[CovidDeaths]

-- Select TOP 5 rows from CovidDeaths table
SELECT TOP (5) *
  FROM PortfolioProject.dbo.CovidDeaths

-- Select TOP 5 rows from CovidVaccinations table
 SELECT TOP (5) *
  FROM PortfolioProject.dbo.CovidVaccinations

---- Countries with highest death count per population
SELECT location, MAX(CAST(total_deaths AS INT)) AS TotalDeathCount
	FROM PortfolioProject.dbo.CovidDeaths
	WHERE continent IS NOT NULL
	GROUP BY location
	ORDER BY TotalDeathCount DESC

---- Continent with highest death count per population
SELECT location, MAX(CAST(total_deaths AS INT)) AS TotalDeathCount
	FROM PortfolioProject.dbo.CovidDeaths
	WHERE continent IS NULL
	GROUP BY location
	ORDER BY TotalDeathCount DESC

----Total Population vs Total Vaccinations
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
	FROM PortfolioProject.dbo.CovidDeaths AS dea
	JOIN PortfolioProject.dbo.CovidVaccinations AS vac
	ON dea.location = vac.location
	AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL AND dea.location LIKE '%state%'
	ORDER BY 2,3

--Create View for further data analysis
CREATE VIEW PercentPopulationVaccinated AS
	SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
		SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
	FROM PortfolioProject.dbo.CovidDeaths AS dea
	JOIN PortfolioProject.dbo.CovidVaccinations AS vac
	ON dea.location = vac.location
	AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL

--Select all from view
SELECT * FROM PercentPopulationVaccinated