class Group::LandVorstand < Group
    self.layer = false

    class Landesvorsitztender < Role::VorstandVorsitz
    end
  
    class Stellvlandesvorsitzender < Role::VorstandStellvVorsitz
    end
  
    class Landesschatzmeister < Role::VorstandSchatzmeister
    end
  
    class Stellvlandesschatzmeister < Role::VorstandStellvSchatzmeister
    end
  
  
    roles Landesvorsitztender, Stellvlandesvorsitzender, Landesschatzmeister, Stellvlandesschatzmeister
end
  