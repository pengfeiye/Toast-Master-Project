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

  }
)
