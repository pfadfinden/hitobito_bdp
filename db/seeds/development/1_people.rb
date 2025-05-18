# frozen_string_literal: true

#  Copyright (c) 2012-2025, Bund der Pfadfinderinnen und Pfadfinder. This file is part of
#  hitobito_bdp and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/pfadfinden/hitobito_bdp.


require Rails.root.join('db', 'seeds', 'support', 'person_seeder')

class BdpPersonSeeder < PersonSeeder

  def amount(role_type)
    case role_type.name.demodulize
    when 'Member' then 5
    else 1
    end
  end

end

puzzlers = [
  'Carlo Beltrame',
  'Matthias Viehweger',
  'Micha Lüdi',
  'Nils Rauch',
  'Olivier Brian',
  'Pascal Simon',
  'Thomas Ellenberger',
]

devs = {
  'Maximilian Brand' => 'maximilian.brand@pfadfinden.de',
  'Sebastian Köngeter' => 'sebastian.koengeter@pfadfinden.de',
  'Julius Störle' => 'julius.stoerle@pfadfinden.de'
}
puzzlers.each do |puz|
  devs[puz] = "#{puz.split.last.downcase.gsub('ü', 'ue')}@puzzle.ch"
end

seeder = BdpPersonSeeder.new

seeder.seed_all_roles

root = Group.root
devs.each do |name, email|
  seeder.seed_developer(name, email, root, Group::Root::Leader)
end
