

var check = false;

function changeVal(el) {
  var qt = parseFloat(el.parent().children(".qt").html());
  var price = parseFloat(el.parent().children(".price").html());
  var eq = Math.round(price * qt * 100) / 100;

  el.parent().children(".full-price").html( eq + " USD" );

  changeTotal();
}

function changeTotal() {

  var price = 0;

  $(".full-price").each(function(index){
    price += parseFloat($(".full-price").eq(index).html());
  });

  price = Math.round(price * 100) / 100;
  var tax = Math.round(price * 0.05 * 100) / 100
  var shipping = parseFloat($(".shipping span").html());
  var fullPrice = Math.round((price + shipping) *100) / 100;

  if(price == 0) {
    fullPrice = 0;
  }

  $(".subtotal span").html(price);
  $(".tax span").html(tax);
  $(".total span").html(fullPrice);
}

$(document).ready(function(){

  $(".remove").click(function(){
    var el = $(this);
    el.parent().parent().addClass("removed");
    window.setTimeout(
      function(){
        el.parent().parent().slideUp('fast', function() {
          el.parent().parent().remove();
          if($(".product").length == 0) {
            if(check) {
              $("#cart").html("<h1>The shop does not function, yet!</h1><p>If you liked my shopping cart, please take a second and heart this Pen on <a href='https://codepen.io/ziga-miklic/pen/xhpob'>CodePen</a>. Thank you!</p>");
            } else {
              $("#cart").html("<h1>No products!</h1>");
            }
          }
          changeTotal();
        });
      }, 200);
  });

  $(".qt-plus").click(function(){
    $(this).parent().children(".qt").html(parseInt($(this).parent().children(".qt").html()) + 1);

    $(this).parent().children(".full-price").addClass("added");

    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("added"); changeVal(el);}, 150);
  });

  $(".qt-minus").click(function(){

    child = $(this).parent().children(".qt");

    if(parseInt(child.html()) > 0) {
      child.html(parseInt(child.html()) - 1);
    }

    $(this).parent().children(".full-price").addClass("minused");

    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("minused"); changeVal(el);}, 150);
  });

  window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);
});

function checkbirthday(){
  var error= document.getElementById('error-ngaydi');
  var today = new Date();
var year=  today.getFullYear();
var day= today.getDate();
var month= today.getMonth()+1;

var date = year+ "-"+month +"-" +day;
var getbirthday= document.getElementById('ipdatego').value;

var cutyear= getbirthday.substring(0,4); /*cat chuoi */
var cutmonth=getbirthday.substring(5,7);
var cutdate=getbirthday.substring(8,10);


if(cutyear<year){
    error.style.color = "red";
   error.innerHTML="Please reenter year";
}
else if(cutyear==year && cutmonth<month)
{
  error.style.color = "red";
  error.innerHTML="Please reenter month";
}
else if(cutyear==year && cutmonth==month && cutdate <day)
{
      error.style.color = "red";
      error.innerHTML="Please reenter day";
}
else{
    error.style.color = "red";
    error.innerHTML="";
}


}
