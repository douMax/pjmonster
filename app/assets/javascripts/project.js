$(document).ready(function() {
  $('.invoice-row').on('click', function(){
    console.log('invoice row clicked')
    $('#invoice-detail').toggleClass('show')
  })


}); // docu ready