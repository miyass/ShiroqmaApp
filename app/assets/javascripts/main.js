// console.log('hello');

$(function(){
    $('.formButton').click(function(){
        $('#formModalWrapper').fadeIn();
    });

    // 子要素除かれない
    // $('#formModalWrapper:not(div.formModal)').click(function(){
    //     $('#formModalWrapper').fadeOut();
    // });

    $('.signUpButton').click(function(){
        $('#signUpModalWrapper').fadeIn();
    });

});