module Swagger::TasksApi
    extend ActiveSupport::Concern
    include Swagger::Blocks

    included do
        # Swagger Settings
        swagger_path '/api/tasks/{task_id}' do
        
            # Get /api/tasks
            operation :get do
                key :description, 'Get Tasks List'

                response 200 do
                    key :description, 'Tasks'
                    schema do
                        key :required, [:id, :name]
                        property :id do
                            key :type, :integer
                            key :format, :int64
                        end
                        property :name do
                            key :type, :string
                        end
                        property :is_done do
                            key :type, :boolean
                        end
                    end
                end
            end
        end
    end
end