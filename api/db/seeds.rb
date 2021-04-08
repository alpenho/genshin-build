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
end