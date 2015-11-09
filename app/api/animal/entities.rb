module Animal
  module Entities
    class Id < Grape::Entity
      expose :id
    end

    class Named < Id
      expose :name
    end

    class Pet < Named
      expose :owner_email
      expose :breed_id
      expose :gender
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
