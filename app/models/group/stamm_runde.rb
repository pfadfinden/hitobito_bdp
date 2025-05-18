# frozen_string_literal: true

# TODO: rename class to specific name and change all references
class Group::StammRunde < ::Group
    self.layer = false
    self.event_types = [Event, Event::Course]
    
    ### ROLES
  
    # TODO: define actual role types
    class Rundensprecher < Role::GruppenLeitung
    end
  
    class Rr < Role::GruppenMitglied
    end
  
    roles Rundensprecher, Rr
  
  end
  