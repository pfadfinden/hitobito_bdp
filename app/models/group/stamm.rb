# frozen_string_literal: true

# TODO: rename class to specific name and change all references
class Group::Stamm < ::Group
    self.layer = true
    self.event_types = [Event, Event::Course]
  
    # TODO: define actual child group types
    children Group::StammMeute, Group::StammSippe, Group::StammRunde, Group::StammVorstand

  
    ### ROLES
  
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

    class Zweitmitglied < ::Role::ZweitMitglied
      self.permissions = []
    end
  
    roles Mitgliederverwalter,Ordentlichesmitglied, Foerdermitglied, Zweitmitglied
  
  end
  