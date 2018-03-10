$(function(){
$('.item-spoiler').click(
function(){
var option = $(this).prev().css('display') 
if (option=='block'){
        $(this).prev().slideUp(400);

}
else{
$('.block501').slideUp(400);
$(this).prev().slideDown(400);
    
  
}
});
});/*end ready*/
