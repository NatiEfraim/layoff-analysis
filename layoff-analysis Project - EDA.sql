-- Explore the data:
SELECT *
FROM world_layoffs.layoffs_staging2;

-- Find maximum layoffs:
SELECT MAX(total_laid_off) AS Max_Laid_Off
FROM world_layoffs.layoffs_staging2;

-- Analyze percentage of layoffs:
SELECT MAX(percentage_laid_off) AS Max_Percentage, MIN(percentage_laid_off) AS Min_Percentage
FROM world_layoffs.layoffs_staging2
WHERE percentage_laid_off IS NOT NULL;

-- Identify companies with 100% layoffs:
SELECT *
FROM world_layoffs.layoffs_staging2
WHERE percentage_laid_off = 1;

-- Analyze 100% layoffs by funds raised:
SELECT *
FROM world_layoffs.layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;