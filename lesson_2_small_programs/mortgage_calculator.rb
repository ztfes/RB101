=begin

Build a mortgage calculator

(You'll need three pieces of information:

    the loan amount
    the Annual Percentage Rate (APR)
    the loan duration

From the above, you'll need to calculate the following things:

    monthly interest rate
    loan duration in months
    monthly payment

Use the following formula:

m = p * (j / (1 - (1 + j)**(-n)))

m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

=end

def prompt(message)
  puts("=> #{message}") # begin each prompt with arrow indication for clarity
end

def mortgage_calc(loan_amount, annual_interest_rate, loan_duration)
  monthly_interest = annual_interest_rate / (12 * 100) # APR to monthly
  monthly_payment = (loan_amount * (monthly_interest /
                    (1 - (1 + monthly_interest)**(-loan_duration)))).round(2)
  prompt("Your montly payment is $#{monthly_payment}") # display montly payment
end

prompt("Welcome to your loan calculator!") # Welcome user

prompt("Enter your loan amount in $USD:") # Get loan amount
loan_amount = gets().chomp().to_f

prompt("Enter the loan Annual Percentage Rate (APR):") # Establish APR
annual_interest_rate = gets().chomp().to_f

prompt("Enter your loan duration in months:") # loan duration in months
loan_duration = gets().chomp().to_f

mortgage_calc(loan_amount, annual_interest_rate, loan_duration) # compute

# TO DO

# Add input validation
# Improve command line formatting
# Prompt user for additional calculations if desired