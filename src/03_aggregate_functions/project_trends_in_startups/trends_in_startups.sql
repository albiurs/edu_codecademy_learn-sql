# Trends in Startups
#
# Howdy! It’s your first day as a TechCrunch reporter. Your first task is to write an article on the rising trends in the startup world.
#
# To get you started with your research, your boss emailed you a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.
#
# Write queries with aggregate functions to retrieve some interesting insights about these companies.
#
# What are you waiting for? Let’s get started!
#
# If you get stuck during this project or would like to see an experienced developer work through it, click “Get Help“ to see a project walkthrough video.



# Getting started, take a look at the startups table:
SELECT *
FROM startups;

# Calculate the total number of companies in the table.
SELECT COUNT(*)
FROM startups;

# We want to know the total value of all companies in this table.
# Calculate this by getting the SUM() of the valuation column.
SELECT SUM(valuation)
FROM startups;

# What is the highest amount raised by a startup?
# Return the maximum amount of money raised.
SELECT MAX(raised)
FROM startups;

# Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

# In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;



# Let's find out the valuations among different sectors:

# Return the average valuation.
SELECT AVG(valuation)
FROM startups;

# Return the average valuation, in each category.
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

# Return the average valuation, in each category.
# Round the averages to two decimal places.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

# Return the average valuation, in each category.
# Round the averages to two decimal places.
# Lastly, order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;



# What are the most competitive markets?

# First, return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

# Next, filter the result to only include categories that have more than three companies in them.
# What are the most competitive markets?
# Because you are filtering on a condition that has an aggregate function, you need to use HAVING instead of WHERE:
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;
# If you want to go a step further, sort the result using ORDER BY:
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;



# Let's see if there's a difference in startups sizes among different locations:

# What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

# What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
