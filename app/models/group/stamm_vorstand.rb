class Group::StammVorstand < Group
    self.layer = false
    class Stammesfuehrer < Role::VorstandVorsitz
    end
  
    class Stellvstammesfuehrer < Role::VorstandStellvVorsitz
    end
  
    class Stammesschatzmeister < Role::VorstandSchatzmeister
    end
  
    class Stellvstammesschatzmeister < Role::VorstandStellvSchatzmeister
    end
    roles Stammesfuehrer, Stellvstammesfuehrer, Stammesschatzmeister, Stellvstammesschatzmeister

end
  