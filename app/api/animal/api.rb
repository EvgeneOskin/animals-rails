module Animal
  # Class with grape api for Animal project.
  class API < Grape::API
    version 'v1', using: :path
    format :json

    helpers do
      def current_user
        @current_user ||= User.authorize!(env)
      end

      def authenticate!
        error!('401 Unauthorized', 401) unless current_user
      end
    end

    http_basic do |username, password|
      # verify user's password here
      user = User.find_by email: username
      user.valid_password? password if user
    end

    desc 'Pet index.', params: Entities::Pet.documentation
    get '/pet' do
      authenticate!
      pets = Pet.all
      present pets, with: Entities::Pet, type: :full
    end

    desc 'Create a pet.', params: Entities::Pet.documentation
    params do
      requires(
        :all,
        except: [:id, :email],
        using: Entities::Pet.documentation.except(:id, :email)
      )
    end
    post '/pet' do
      authenticate!
      Pet.transaction do
        Pet.create_with_params! params, @current_user
      end
    end

    desc 'Breed index.', params: Entities::Breed.documentation
    get '/breed' do
      authenticate!
      breeds = Breed.all
      present breeds, with: Entities::Breed, type: :full
    end

    desc 'Birth index.', params: Entities::Birth.documentation
    get '/birth' do
      authenticate!
      births = Birth.all
      present births, with: Entities::Birth, type: :full
    end
  end
end
