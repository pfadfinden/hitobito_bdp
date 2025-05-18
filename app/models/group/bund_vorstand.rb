class Group::BundVorstand < Group
    self.layer = false

    class Bundesvorsitztender < Role::VorstandVorsitz
        self.permissions = [:layer_and_below_full]
    end
  
    class Stellvbundesvorsitzender < Role::VorstandStellvVorsitz
        self.permissions = [:layer_and_below_full]
    end
  
    class Bundesschatzmeister < Role::VorstandSchatzmeister
        self.permissions = [:layer_and_below_full]
    end
  
    class Stellvbundesschatzmeister < Role::VorstandStellvSchatzmeister
        self.permissions = [:layer_and_below_full]
    end
  
    roles Bundesvorsitztender, Stellvbundesvorsitzender, Bundesschatzmeister, Stellvbundesschatzmeister
end
  