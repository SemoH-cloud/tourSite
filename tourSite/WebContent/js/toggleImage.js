$( document ).ready(function() {
	$('.TransportationImage').show();
  $("#btn1").click(function(){
    var myClass = "TransportationImage";
    disableAnotherClass(myClass);
    $("." + myClass).toggle();
  });

  $("#btn2").click(function(){
    var myClass = "LanguageImage";
    disableAnotherClass(myClass);
    $("." + myClass).toggle();
  });

  $("#btn3").click(function(){
    var myClass = "FoodImage";
    disableAnotherClass(myClass);
    $("." + myClass).toggle();
  });

});

function disableAnotherClass(myClass){
    $(".image-item").each(function(index, item){ 
        if($(item).hasClass(myClass) == false){
           $(item).hide();
        }
    });
}