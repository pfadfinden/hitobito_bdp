# frozen_string_literal: true

# TODO: rename class to specific name and change all references
class Group::Land < ::Group
    self.layer = true
  
    # TODO: define actual child group types
    children Group::Stamm, Group::Bezirk, Group::LandVorstand, Group::LandAk
    ### ROLES
  
    # TODO: define actual role types
     # TODO: define actual role types
     class Mitgliederverwalter < ::Role
      self.permissions = [:layer_and_below_full, :admin]
    end

    class Ordentlichesmitglied < ::Role::OrdentlichesMitglied
      self.permissions = []
    end
  
    class Foerdermitglied < ::Role::FoerderndesMitglied
      self.permissions = []
    end


  
    roles Mitgliederverwalter,Ordentlichesmitglied, Foerdermitglied
  
  end
  