$(document).ready () ->
  $input = $('#search')
  $input.typeahead({
    source: window.data,
  autoSelect: true})
  $input.change(->
    current = $input.typeahead("getActive")
    if current
      if current.name == $input.val()
        window.location.href = "/search/result?q=#{current.id}"
      else
        console.log "not redirect to #{current}"
    else
      console.log "fail #{current}"
  )
error: (data) ->
  console.log data

  return
