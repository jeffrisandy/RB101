=begin
User Input
- The loan Amount
- The Annual Percentage Rate  (APR)
- the loan duration

to Calc


m = p * (j / (1 - (1 + j)**(-n)))

m = monthly payment
p = loan payment
j = monthly interest rate = APR / 12
n = loan duration in months
=end

def calc_monthly_payment(loan_payment, monthly_rate, loan_duration)
  monthly_payment = loan_payment * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration)))
end

def annual_to_month_rate(annual_rate)
  annual_rate / 12
end


loan_amount = 1000
annual_rate = 0.12
duration = 12 # months

monthly_rate = annual_to_month_rate(annual_rate)

monthly_pay = calc_monthly_payment(loan_amount, monthly_rate, duration)

p "The monthly payment is $#{format('%.2f', monthly_pay)}"
