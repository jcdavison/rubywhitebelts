# $ ->
#   funk = "boing boing boing"
#   $(document).click ->
#     console.log funk
class Person
  constructor: (name) ->
    @name = name

john = new Person("Davison")



console.log john.name