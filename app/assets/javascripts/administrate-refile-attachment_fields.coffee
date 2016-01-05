#= require jquery
#= require refile

$(document).on 'ready page:load', ->
  $input = $('form').find 'input[type=file]'

  $input.on 'upload:start', ->
    console.log 'Upload start'

  $input.on 'upload:progress', (e) ->
    detail = e.originalEvent.detail
    percentageComplete = (detail.loaded / detail.total) * 100
    $(this).find('progress').prop 'value', percentageComplete

  $input.on 'upload:complete', ->
    console.log 'Upload complete'
