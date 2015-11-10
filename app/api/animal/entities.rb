module Animal
  # Entities for Animal API.
  module Entities
    # General Entity with id, and timestamps.
    class Id < Grape::Entity
      expose :id
      expose :created_at
      expose :updated_at
    end

    # General Entity plus name field.
    class Named < Id
      expose :name
    end

    # Pet entity (Pet and Birth model).
    class Pet < Named
      expose :email, as: :owner_email
      expose :breed_id
      expose :gender
      expose :father_id
      expose :mother_id
    end

    # Breed entity like Breed model.
    class Breed < Named
    end

    # Birth entity like Birth model.
    class Birth < Id
      expose :child_id
      expose :father_id
      expose :mother_id
    end
  end
end
