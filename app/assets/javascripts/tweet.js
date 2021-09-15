// ウィンドウを開く
$(function(){    
    $( '.js-modal-open' ).each( function() {
      $( this ).on( 'click', function() {
        var target = $( this ).data( 'target' );
        var modal = document.getElementById( target );
        $( modal ).fadeIn( 300 );
        return false;
      });
    });

// ウィンドウを閉じる
    $( '.js-modal-close' ).on( 'click', function() {
      $( '.js-modal' ).fadeOut( 300 );
      return false;
    });
    
    
    $('.js-modal-open-tweet').each( function(){
       $(this).on('click',function() {
         var target = $(this).data('target');
         var modal = document.getElementById(target)
         $(modal).fadeIn(300);
         return false;
       });
    });
    
    $('.js-modal-close-tweet').on('click',function(){
        $('.js-modal-tweet').fadeOut(300);
        return false;
    });



$( '.js-modal-open-comment' ).each( function() {
     $( this ).on( 'click', function() {
          var target = $( this ).data( 'target' );
          var modal = document.getElementById( target );
          $( modal ).fadeIn( 300 );
          return false;
     });
});

// ウィンドウを閉じる
$( '.js-modal-close-commnet' ).on( 'click', function() {
    $( '.js-modal-commnet' ).fadeOut( 300 );
    return false;
});
});
