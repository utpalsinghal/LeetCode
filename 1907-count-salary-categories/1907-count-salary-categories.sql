-- with cte as (
--     select
--         (case
--             when income < 20000 then 'Low Salary'
--             when income > 50000 then 'High Salary'
--             else 'Average Salary'
--         end) [category],
--         1 [count]
--     from accounts
--     UNION ALL
--     SELECT 'Low Salary', 0 
--     UNION ALL
--     SELECT 'Average Salary', 0
--     UNION ALL
--     SELECT 'High Salary', 0
-- )

-- select category, sum(count) accounts_count
-- from cte
-- group by category

;with cte_low as (
    select 'Low Salary' as category, count(income) as accounts_count from Accounts where income <20000
), cte_average as (
    select 'Average Salary' as category, count(income) as accounts_count from Accounts where income between 20000 and 50000
), cte_high as (
    select 'High Salary' as category, count(income) as accounts_count from Accounts where income> 50000
)

select * from cte_low
union
select * from cte_average
union 
select * from cte_high
