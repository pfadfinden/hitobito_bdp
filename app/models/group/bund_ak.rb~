class Group::BundAk < Group
    self.layer = false

    class Bundesbeauftragter < Role::AkBeauftragter
        self.permissions = []
    end
  
    class Bundesakmitglied < Role::AkMitglied
        self.permissions = []
    end
  
    roles Bundesbeauftragter, Bundesakmitglied
end
  
