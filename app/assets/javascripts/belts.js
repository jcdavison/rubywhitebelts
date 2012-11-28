$(document).ready(function() {
    $(".buttonForModal").click(function() {
      $("#"+$(this).attr("id")+"Modal").reveal();
    });
  });