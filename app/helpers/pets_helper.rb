# Helpers for pet controller.
module PetsHelper
  def link_to_father(pet, default)
    if pet.father
      link_to pet.father.name, pet_path(pet.father.id)
    else
      default
    end
  end

  def link_to_mother(pet, default)
    if pet.mother
      link_to pet.mother.name, pet_path(pet.mother.id)
    else
      default
    end
  end

  def options_for_select_parent_and_not_use(models, not_use: 'no')
    names_ids = models.map { |p| [p.name, p.id] }
    array = [[not_use, nil]] + names_ids
    options_for_select array
  end
end
