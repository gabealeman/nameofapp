$(document).on('ready page:load turbolinks:load', function() {
  $('.rating').raty({ path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });

  $('.img-zoom').elevateZoom(); 

  $(".mCustomScrollbar").mCustomScrollbar({axis:"x"});

});