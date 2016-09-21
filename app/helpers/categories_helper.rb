module CategoriesHelper
  def category_balance_for(category)
    balance = category.budget
    category.spendings.each do |spending|
      balance -= spending.amount
    end
    balance
  end

  def not_planned_spendings_for(category)
    not_planned = 0
    category.spendings.each do |spending|
      if !spending.planned
        not_planned += 1
      end
    end
    not_planned
  end

  def category_total_spent_for(category)
    total_spent = 0
    category.spendings.each do |spending|
      total_spent += spending.amount
    end
    total_spent
  end
end
