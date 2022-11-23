class PlanetPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end

  def new?
    true
  end
end
