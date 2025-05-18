class Group::LandAk < Group
    self.layer = false

    class Landesbeauftragter < Role::AkBeauftragter
        self.permissions = []
    end
  
    class Landesakmitglied < Role::AkMitglied
        self.permissions = []
    end
  
    roles Landesbeauftragter, Landesakmitglied
end
  