(function() {
  $(function() {
    // add click to button
    $('.support').click(function(evt){
      evt.stopPropagation();
      $('.message').addClass('active');
    });
    // add click to message itself
    $('.message').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.message').removeClass('active');
    });
    
	// Добавление товара
	$('.sell-message-btn').click(function(evt){
      evt.stopPropagation();
      $('.sell-message').addClass('active');
    });
    
    
	// add click to message itself
    $('.sell-message').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.sell-message').removeClass('active');
    });	
    
    
	// Редактирование товара
	$('.edit-popup-btn').click(function(evt){
	   
      evt.stopPropagation();
      $('.edit-popup').addClass('active');
	   $('.sell-message').removeClass('active');
	   var rel = $(this).attr("rel");
	   var name = $(this).children(".it_name").html();
	   var price = $(this).children(".it_price").html();
	   var url2 = "http://steamcommunity-a.akamaihd.net/economy/image/" + $(this).children('.it_url').html();
	   var price2 = $(this).children(".price_2").html();
	   var komisia = $(this).children(".it_komisia").html();
	   
	   $(".delet-sell").attr("href", "ajaxlink.php?del=" + rel);
	   
	       if(price2 != 0)
	       {
	           $("input[name='price']").val(price2);
	           $("input[name='kom']").val(price2);
	       }
	   
                     $(".col-xs-5 h4").html(name);
                     $(".col-xs-5 img").attr("src", url2);
                     $(".price3").html(price);
                   $("input[name='iditem']").val(rel);
    });
    
    
    
    $('.sell-message-stuff').on('click', '.edit-popup-btn', function(evt){

      evt.stopPropagation();
      $('.edit-popup').addClass('active');
	   $('.sell-message').removeClass('active');
	   var rel = $(this).attr("rel");
	   var name = $(this).children(".it_name").html();
	   var price = $(this).children(".it_price").html();
	   var url2 = "http://steamcommunity-a.akamaihd.net/economy/image/" + $(this).children('.it_url').html();
	   var price2 = $(this).children(".price_2").html();
	   
	   
	       if(price2 != 0)
	       {
	           $("input[name='price']").val(price2);
	       }
	   
                     $(".col-xs-5 h4").html(name);
                     $(".col-xs-5 img").attr("src", url2);
                     $(".price3").html(price);
                   $("input[name='iditem']").val(rel);
    });
    
    
    
	// add click to message itself
    $('.edit-popup').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.edit-popup').removeClass('active');
    });	
	
  });
}).call(this);

(function() {
  $(function() {
    // add click to button
    $('.support').click(function(evt){
      evt.stopPropagation();
      $('.message').addClass('active');
    });
    // add click to message itself
    $('.message').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.message').removeClass('active');
    });
	// Добавление товара
	$('.sell-message-btn').click(function(evt){
      evt.stopPropagation();
      $('.sell-message').addClass('active');
    });
	// add click to message itself
    $('.sell-message').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.sell-message').removeClass('active');
    });	
	// Редактирование товара
	$('.edit-popup-btn').click(function(evt){
      evt.stopPropagation();
      $('.edit-popup').addClass('active');
    });
	// add click to message itself
    $('.edit-popup').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.edit-popup').removeClass('active');
    });	
	// Трейд
    $('.trade-popup-btn').click(function(evt){
      evt.stopPropagation();
      $('.trade-popup').addClass('active');
    });
    // add click to message itself
    $('.trade-popup').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.trade-popup').removeClass('active');
    });
	$('.close-btn').click(function(evt){
      evt.stopPropagation();
      $('.trade-popup').removeClass('active');
    });
	// Вопрос
    $('.answer-btn').click(function(evt){
      evt.stopPropagation();
      $('.answer-popup').addClass('active');
    });
    // add click to message itself
    $('.answer-popup').click(function(evt){
      evt.stopPropagation();
    });
    $(document).add('all').click(function() {
      $('.answer-popup').removeClass('active');
    });
	$('.close-btn').click(function(evt){
      evt.stopPropagation();
      $('.answer-popup').removeClass('active');
    });
  });
}).call(this);