<script src='thirdparties/jquery.js'></script>
<script src='js/scripts.js'></script>

<script>
	document.querySelector('#search_field_id').addEventListener('keyup', function(){

		//use jquery ajax
		$.get({
			url: "search_result.php",
			data: $("#search_form").serialize(),
			success: function(results){
				results = JSON.parse(results);
				console.log("Search results: ", results);
			}, 
			beforeSend(){

			}
		})

	})
	
	
</script>