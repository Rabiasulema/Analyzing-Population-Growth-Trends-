Question 1: Which cities experienced the highest population growth rates from 2022 to 2023?
SELECT 
    city,country,population_growthRate,population_in_2022,population_in_2023 from [world-country-populations] 
	order by population_growthRate desc
Question: 2 Compare the population growth rates between China and India for the year 2022 to 2023.
SELECT    city,country,population_growthRate,population_in_2022,population_in_2023 from [world-country-populations] 
    where country in ('china','india')
	order by population_growthRate desc
Question 3 Which cities have the highest population in 2023?
SELECT city,country,Population_in_2023 from [world-country-populations]
    order by population_in_2023 desc 
Question 4 What are the top 5 countries with the largest overall population growth from 2022 to 2023?
SELECT 
    Country,
    SUM(Population_in_2023 - Population_in_2022) AS Total_Population_Growth from [world-country-populations]
	GROUP BY country
	 order by Total_Population_Growth DESC
 
Question 5 Identify cities experiencing a decline in population based on a negative growth rate ?
SELECT city,country,Population_in_2022,Population_in_2023, Population_growthRate from [world-country-populations]
   where Population_growthRate < 0;
Question 6; Compare the population growth rates among major Asian cities.
SELECT City, Country,Population_in_2022, Population_in_2023,Population_growthRate from [world-country-populations]
    where Country IN ('China', 'India', 'Japan', 'Pakistan', 'Bangladesh')
    ORDER BY Population_growthRate DESC;
Question:7 Identify cities in India with a population growth rate above 0.04
SELECT City, Country,Population_in_2022, Population_in_2023,Population_growthRate from [world-country-populations]
    WHERE Country = 'India' AND Population_growthRate > 0.04;

