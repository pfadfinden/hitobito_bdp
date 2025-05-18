# frozen_string_literal: true

# TODO: rename class to specific name and change all references
class Group::StammMeute < ::Group
    self.layer = false
    self.event_types = [Event, Event::Course]
    
    ### ROLES
  
    # TODO: define actual role types
    class Meutenfuehrung < Role::GruppenLeitung
    end
  
    class Woelfling < Role::GruppenMitglied
    end
  
    roles Meutenfuehrung, Woelfling
  
  end
  