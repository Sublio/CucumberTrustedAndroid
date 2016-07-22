require 'calabash-android/management/adb'
require 'calabash-android/operations'


Before('@reset') do |scenario| 

end 

After('@reset') do |scenario|
	clear_app_data
end
