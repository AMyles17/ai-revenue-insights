- 1. Preview Data
SELECT *
FROM `your_project.your_dataset.tips_data`
LIMIT 10;

-- 2. Revenue by Day
SELECT `day`,
       SUM(total_bill) AS total_revenue
FROM `your_project.your_dataset.tips_data`
GROUP BY `day`
ORDER BY total_revenue DESC;

-- 3. Revenue by Time (Lunch vs Dinner)
SELECT `time`,
       SUM(total_bill) AS total_revenue
FROM `your_project.your_dataset.tips_data`
GROUP BY `time`
ORDER BY total_revenue DESC;

-- 4. Average Tip Percentage
SELECT ROUND(AVG(tip / total_bill) * 100, 2) AS avg_tip_percent
FROM `your_project.your_dataset.tips_data`;

-- 5. Revenue by Party Size
SELECT size,
       SUM(total_bill) AS total_revenue
FROM `your_project.your_dataset.tips_data`
GROUP BY size
ORDER BY size;

-- 6. Revenue by Day + Time (Combined Insight)
SELECT `day`,
       `time`,
       SUM(total_bill) AS total_revenue
FROM `your_project.your_dataset.tips_data`
GROUP BY `day`, `time`
ORDER BY total_revenue DESC;

-- 7. Tip % by Smoker
SELECT smoker,
       ROUND(AVG(tip / total_bill) * 100, 2) AS avg_tip_percent
FROM `your_project.your_dataset.tips_data`
GROUP BY smoker;

-- 8. Revenue + Tip % by Gender
SELECT sex,
       SUM(total_bill) AS total_revenue,
       ROUND(AVG(tip / total_bill) * 100, 2) AS avg_tip_percent
FROM `your_project.your_dataset.tips_data`
GROUP BY sex
ORDER BY total_revenue DESC;
