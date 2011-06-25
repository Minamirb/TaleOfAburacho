jQuery ($) ->
  $('#drunk_button').click ->
    id = location.href.split("/").pop()
    $.post("/histories.json", {sake_id: id}).success ->
      alert("You had a drink.")