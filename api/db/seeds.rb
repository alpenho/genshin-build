require 'json'

Dir['db/seeds/*.json'].each do |path|
  filename = File.basename(path, ".json")

  # this is to generate seed equipment
  if filename == 'artifact' || filename == 'weapon'
    file = File.open(path)
    equipments = JSON.load(file)

    use_class = filename == 'artifact' ? ::Artifact : ::Weapon
    equipments.each do |equipment|
      new_equipment = use_class.new(
        name: equipment["name"],
        star: equipment["star"],
      )

      if filename == 'artifact'
        new_equipment.artifact_type = equipment["artifact_type"]
      else
        new_equipment.weapon_type = equipment["weapon_type"]
      end

      new_equipment.save!

      MainStatus.new(
        status_type: equipment["main_status"]["status_type"],
        value: equipment["main_status"]["value"],
        percentage: equipment["main_status"]["percentage"],
        equipment: new_equipment
      ).save!

      equipment["sub_statuses"].each do |sub_status|
        SubStatus.new(
          status_type: sub_status["status_type"],
          value: sub_status["value"],
          percentage: sub_status["percentage"],
          equipment: new_equipment
        ).save!
      end
    end
  end

  if filename == 'character'
    file = File.open(path)
    characters = JSON.load(file)

    characters.each do |character|
      char = Character.new(
        level: character['level'],
        ascension: character['ascension'],
        name: character['name'],
        element: character['element'],
        health_point: character['health_point'],
        attack: character['attack'],
        defense: character['defense'],
        ascension_bonus_type: character['ascension_bonus_type'],
        value: character['value'],
        percentage: character['percentage'],
        critical_rate: character['critical_rate'],
        critical_damage: character['critical_damage']
      )

      char.save!
    end
  end
end