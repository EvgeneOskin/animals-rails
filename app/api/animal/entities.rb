module Animal
  module Entities
    class Id < Grape::Entity
      expose :id
      expose :created_at
      expose :updated_at
    end

    class Named < Id
      expose :name
    end

    class Pet < Named
      expose :owner_email
      expose :breed_id
      expose :gender
      expose :father_id
      expose :mother_id
    end

    class Breed < Named
    end

    class Birth < Id
      expose :child_id
      expose :father_id
      expose :mother_id
    end
  end
end
