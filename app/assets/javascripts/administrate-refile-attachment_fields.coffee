#= require jquery
#= require refile

$(document).on 'ready page:load', ->
  $input = $('form').find 'input[type=file]'

  $input.on 'upload:start', ->
    $(this).closest('form').find('input[type=submit]').prop 'disabled', true

  $input.on 'upload:progress', (e) ->
    progress = e.originalEvent.detail.progress
    percentageComplete = (progress.loaded / progress.total) * 100
    $(this).siblings('progress').prop 'value', percentageComplete

  $input.on 'upload:complete', ->
    $(this).closest('form').find('input[type=submit]').removeProp 'disabled'
