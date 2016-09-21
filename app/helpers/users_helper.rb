module UsersHelper

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def user_balance_for(user)
    balance = user.budget
    user.plans.each do |plan|
      plan.categories.each do |category|
        category.spendings.each do |spending|
          balance -= spending.amount
        end
      end
    end
    balance
  end

  def user_total_spent_for(user)
    spent = 0
    user.plans.each do |plan|
      plan.categories.each do |category|
        category.spendings.each do |spending|
          spent += spending.amount
        end
      end
    end
    spent
  end
end
