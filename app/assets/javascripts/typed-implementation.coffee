ready = ->
  new Typed '.element', {
    strings: [
      "I love to put fish sticks in my m",
      "This website is the result of my first steps into Rails development."
    ],
    typeSpeed: 30,
    backSpeed: 20,
    backDelay: 200
  }
  return

$(document).on 'turbolinks:load', ready