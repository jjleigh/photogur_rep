$(document).on('ready page:load', function() {
	$('#search-form').submit(function(event) {
		event.preventDefault();
		var searchValue = $('#search').val();

		$.getScript( '/pictures?search=' + searchValue);
		return false;
	});
});
