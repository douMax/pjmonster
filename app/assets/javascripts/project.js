$(document).ready(function() {
  $('.show-handle').on('click', function(){
    console.log('invoice row clicked')
    $('#invoice-detail').toggleClass('show')
  })


}); // docu ready