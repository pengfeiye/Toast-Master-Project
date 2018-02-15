$(document).on('turbolinks:load',function(){


  $(".signup_link").click(function(e) {
    e.preventDefault()
  	$(".signin_form").hide();
  	$(".signup_form").show();
  });

  $(".new-down").on("click",function(e){
    e.preventDefault()

    let newsId = $(this).attr("data-id")
    let className = $(this).attr("class")
    console.log(className)
    if(className === "new-down fa btn fa-chevron-down"){
      $(this).removeClass("fa-chevron-down")
      $(this).addClass("fa-chevron-up")
      $(`#news-${newsId}`).css({"overflow": "visible", "max-height": "100vh"})
    }else{
      $(this).removeClass("fa-chevron-up")
      $(this).addClass("fa-chevron-down")
      $(`#news-${newsId}`).css({"overflow": "hidden", "max-height": "4vh"})
    }

  })

  $(".3w").on("click",function(e){
    e.preventDefault()

    let newsId = $(this).attr("data-id")
    let className = $(this).attr("class")
    console.log(newsId)
    if(className === "3w fa btn fa-chevron-down"){
      $(this).removeClass("fa-chevron-down")
      $(this).addClass("fa-chevron-up")
      $(`#${newsId}`).css({"overflow": "visible", "max-height": "100vh"})
    }else{
      $(this).removeClass("fa-chevron-up")
      $(this).addClass("fa-chevron-down")
      $(`#${newsId}`).css({"overflow": "hidden", "max-height": "8vh"})
    }

  })

  $("textarea").on("keydown",function(key){
    if(key.keyCode===13){
      $(this).val+="\n"
    }
  })

  $("#mapBtn").on("click",function(e){
    window.open('https://www.google.com/maps/place/2222+Wilshire+Blvd,+Santa+Monica,+CA+90403/@34.0329687,-118.4822955,17z/data=!4m5!3m4!1s0x80c2bb4be0578851:0xb8affa937ed31fca!8m2!3d34.0330398!4d-118.4806969', '_blank')
  })


  }
)
