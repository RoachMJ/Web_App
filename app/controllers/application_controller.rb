class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def search_path
    @search_path = "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
    if "#{request.protocol}#{request.host_with_port}#{request.fullpath}" == '/sections'
      then redirect_to sections_path
      if "#{request.protocol}#{request.host_with_port}#{request.fullpath}" == '/professors'
        then redirect_to professors_path
        if "#{request.protocol}#{request.host_with_port}#{request.fullpath}"== '/courses'
          then redirect_to courses_path
          if "#{request.protocol}#{request.host_with_port}#{request.fullpath}"== '/students'
            then redirect_to students_path
            if "#{request.protocol}#{request.host_with_port}#{request.fullpath}"== '/enrollments'
              then redirect_to enrollments_path
            end
          end
        end
      end
    end
  end
end
