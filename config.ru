# This file is used by Rack-based servers to start the application.

# turn the Facebook POST requests back to GET requests
use Rack::PostCanvas

require ::File.expand_path('../config/environment',  __FILE__)
run DeroseBadges::Application
