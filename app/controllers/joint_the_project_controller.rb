class JointTheProjectController < ApplicationController
    def index
        @id_user = params['id_user']
        @id_challenge = params['id_challenge']
    end
end
