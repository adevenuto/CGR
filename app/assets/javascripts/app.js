$(function(){
  $('.close').click(function(){
    $('.alert').addClass('hide')
  })
  $(function() {
    var offset = parseInt($("#description-container").offset().top);
    $(".about").click(function() {
      console.log(offset)
      $("html,body").animate({scrollTop: offset + (offset * 0.1)}, 700);
    })
  })
})