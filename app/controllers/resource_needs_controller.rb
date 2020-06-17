class ResourceNeedsController < ApplicationController
    skip_before_action :require_login
end
