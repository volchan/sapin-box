class SoundPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    true
  end

  def edit?
    record.user == user || user.moderator? || user.admin?
  end

  def update?
    record.user == user || user.moderator? || user.admin?
  end

  def destroy?
    record.user == user || user.moderator? || user.admin?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
