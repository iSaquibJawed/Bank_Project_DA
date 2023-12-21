-- Year Wise Loan Amount stats
select earliest_cr_line as Loan_Years, round(sum(total_pymnt))  as Total_amount from finance_master_data
group by earliest_cr_line
order by sum(total_pymnt) desc;

-- Grade and subgrade wise revol_balance

select grade, sub_grade, sum(revol_bal) as Total_revol_bal from finance_master_data
group by grade, sub_grade
order by grade,sub_grade;

#Total Payment for Verified Status Vs Total Payment for Non Verified Status
select verification_status, count(*) as count_of_status, round(sum(total_pymnt)) as Total_payment from finance_master_data
where verification_status in ('Verified','Not Verified')
group by verification_status;

#State wise and last_credit_pull_d wise loan status

select addr_state as State,last_credit_pull_d as Dates,loan_status,count(*) as Count_of_loans from finance_master_data
group by addr_state,last_credit_pull_d,loan_status
order by addr_state,last_credit_pull_d;

#Home ownership Vs last payment date stats

select home_ownership,last_pymnt_d from finance_master_data;






