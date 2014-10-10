@counter = 0


xOrO = =>
  counter++
  if counter % 2 is 0 then "x" else "o"


$ ->

  $('.box').click (e) ->
    if $(@).hasClass("x") or $(@).hasClass("o")
      alert("You can't do that!")
    else
      dummy = xOrO()
      $(@).addClass("#{dummy}").html("#{dummy}")