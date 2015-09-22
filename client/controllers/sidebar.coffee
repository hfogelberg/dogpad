Template.sidebar.rendered =->
	$('.sidebar').sidebar('attach events', '.menu .item').sidebar('show').sidebar('toggle')

# 	# $('.context.example .ui.sidebar')
# 	  # .sidebar({
# 	  #   context: $('.context.example .bottom.segment')
# 	  # })
# 	  # .sidebar('attach events', '.context.example .menu .item')
# $('.sidebar') .sidebar({context: '.visible.example .bottom.segment'}).sidebar('hide')
