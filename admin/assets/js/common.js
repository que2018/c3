$(document).ready(function() {
	//set last page opened on the menu
	$('#side-menu a[href]').on('click', function() {
		sessionStorage.setItem('menu', $(this).attr('href'));
	});

	//sets active and open to selected page in the left column menu.
	$('#side-menu a[href=\'' + sessionStorage.getItem('menu') + '\']').parents('li').addClass('active');
});
