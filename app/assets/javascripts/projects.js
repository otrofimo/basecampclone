$(function(){
	$('#list-form').bind('ajax:success', function(xhr, data, status){
		$('#lists').html(data);
	});
})