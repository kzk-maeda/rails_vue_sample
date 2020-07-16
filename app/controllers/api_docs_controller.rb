class ApiDocsController < ApplicationController
    include Swagger::Blocks

    swagger_root do
        key :swagger, '2.0'
        info do
          key :version, '1.0.0'
          key :title, 'Todo Sample App'
          key :description, 'Todo Sample App'
          contact name: '@kzk_maeda'
          license name: 'MIT'
        end
        key :basePath, '/'
        key :consumes, ['application/json']
        key :produces, ['application/json']

    end

    SWAGGERED_CLASSES = [
        Api::TasksController,
        self,
    ]

    def index
        render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
    end
end
