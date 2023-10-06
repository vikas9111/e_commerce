# app/models/abilty.rb

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      admin_ability(user)
    end

    if user.seller?
      seller_ability
    end

    if user.customer?
      customer_ability
    end
  end

  private

  def admin_ability
  end

  def seller_ability
  end

  def customer_ability
    can :read, Cart, user_id: user.id if user.present?
    can :manage, Cart, user_id: user.id if user.present?
  end
end
