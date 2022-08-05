module Api
    module V1
        class ProjectsController < ApiController

            #GET /projects
            def index
                render json: Project.all
            end

            #GET /projects/:id
            def show
                project = Project.find_by(params[:id])
                if project
                    render json: project
                else
                    render json: { error: "Project not found" }, status: 404
                end
            end

            def create
                project = Project.new(project_params)
                if project.save
                    render json: project, status: 201
                    else
                        render json: { error: "Project not found" }, status: 422
                    end
            end

            def update
                project = Project.find_by(id: params[:id])
                if project.update(project_params)
                    render json: project, status: 201
                else
                    render json: { error: "Project not found" }, status: 422
                end
            end

            def destroy
                project = Project.find_by(id: params[:id])
                if project.destroy
                    head :no_content, status: 204
                else
                    render json: { error: "Project not found" }, status: 422
                end
            end

            private

            def project_params
                params.require(:project).permit(:name, :image_url)
            end

    end


end