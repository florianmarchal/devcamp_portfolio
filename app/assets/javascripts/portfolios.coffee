$ ->
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return  
  return