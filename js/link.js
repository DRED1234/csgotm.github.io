var btn = $('.btn'),
    cnt = $('.cnt');
  
btn.on('click', function() {
    
    cnt.removeClass('active');    
    $($(this).attr('href')).addClass('active');
    
});