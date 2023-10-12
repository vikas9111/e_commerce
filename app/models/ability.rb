# app/models/abilty.rb

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      admin_ability(user)
    end

    if user.seller?
      seller_ability(user)
    end

    if user.customer?
      customer_ability(user)
    end
  end

  private

  def admin_ability(user)
    can :manage, Product, user_id: user.id if user.present?
  end

  def seller_ability(user)
    can :manage, Product, user_id: user.id if user.present?
  end

  def customer_ability(user)
    can :manage, Cart, user_id: user.id if user.present?
    can :read, Product, user_id: user.id if user.present?
  end
end
