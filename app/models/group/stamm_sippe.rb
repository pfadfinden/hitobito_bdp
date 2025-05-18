# frozen_string_literal: true

# TODO: rename class to specific name and change all references
class Group::StammSippe < ::Group
    self.layer = false
    self.event_types = [Event, Event::Course]
    
    ### ROLES
  
    # TODO: define actual role types
    class Sippenfuehrung < Role::GruppenLeitung
    end
  
    class Sippling < Role::GruppenMitglied
    end
  
    roles Sippenfuehrung, Sippling
  
  end
  