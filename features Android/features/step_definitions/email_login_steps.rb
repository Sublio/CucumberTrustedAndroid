require 'calabash-android/calabash_steps'


Then /^I should see search button, toolbar with 5 tabs and RecyclerView$/ do

	sleep(5)
	searchButton=query("ActionMenuItemView id:'op_search'")

	if searchButton.length!=1

		fail("There is multiple matches with 'op_search' element_id")
	
	end

	recyclerView=query("RecyclerView")

	if recyclerView.length!=1

		fail("There was not one recycler!!!")
	end

	tabLayout=query("TabLayout id:'tab_layout'")

	if tabLayout.length!=1
		fail("There was not one tabLayout")
	end
end



And /^I tap button with id password_visibility_img$/ do

	eye=query("* id:'password_visibility_img'")
	touch(eye)
end



Then /^I dont see join_ab_next button$/ do

	button=query("* id:'join_ab_next'")

	if button.empty?
		puts "All good"
	else
		fail("There is a blue button")
	end

end


