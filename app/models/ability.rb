class Ability
  include CanCan::Ability

  def initialize(user)

       user ||= User.new # guest user (not logged in)
       if user.rol == 'admin'
         can [:index, :show, :new, :edit, :create, :update, :destroy, :revision_final, :estado_final_criterio, :show_observaciones, :show_criterio_final], Criterio
         #can :manage, :all
       elsif user.rol == 'gerente'
         can [:revision_criterios, :show_gerente, :new_criterio_gerente, :create, :estado, :show], Criterio
         can [:create], Observacion         
       end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
