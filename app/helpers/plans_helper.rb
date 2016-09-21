module PlansHelper

  def plan_balance_for(plan)
    balance = plan.budget
    plan.categories.each do |category|
      category.spendings.each do |spending|
        balance -= spending.amount
      end
    end
    balance
  end

  def plan_total_spent_for(plan)
    spent = 0
    plan.categories.each do |category|
      category.spendings.each do |spending|
        spent += spending.amount
      end
    end
    spent
  end
end
