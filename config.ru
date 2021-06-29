# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

map "/" do
    run(->(env) { [302, {"Location" => "/i/am/users#{env['REQUEST_PATH']}"}, [""]] })
end

map "/i/am/users" do
  run Rails.application
end
