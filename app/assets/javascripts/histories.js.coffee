jQuery(($) ->
  $('#announcement_button').click(->
    params = $("#new_announcement").serialize()
    textarea = $("#announcement_memo")
    if textarea.val().length > 0
      textarea.val("") 
      $.post("/announcements.json", params).done(->
        $("#announcements_list").load("/announcements")
      )
  )
)
