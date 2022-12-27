class CategoryController < ApiController
    before_action :find_category, except: %i[create index]

    def index
        @category = Category.all
        render json: @category, status: :ok
      end
    
    
      def show
        render json: @category, status: :ok
      end

    
      # POST /category
      def create
        @category = Category.new(category_params)
        if @category.save
          render json: @category, status: :created
        else
          render json: { errors: @category.errors.full_messages },
                 status: :unprocessable_entity
        end
      end
    
      def update
        unless @category.update(category_params)
          render json: { errors: @category.errors.full_messages },
                 status: :unprocessable_entity
        end
      end
    
      # DELETE /users/{username}
      def destroy
        @category.destroy
      end
    
      private
    
      def find_category
        @category = Category.find_by_id!(params[:id]) 
      rescue ActiveRecord::RecordNotFound
          render json: { errors: 'Category not found' }, status: :not_found
      end
    
      def category_params
        params.permit(
           :name, :image, :feature
        )
      end
end
