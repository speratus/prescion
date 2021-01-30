class ApplicationController < ActionController::Base
    helper_method :x_render

    def x_render(variable, default)
        local_variables.include?(variable) ? local_variable_get(variable) : default
    end
end
