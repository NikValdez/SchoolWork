var date_range_picker;
date_range_picker = function() {
  $('.date-range-picker').each(function(){
    $(this).daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        alwaysShowCalendars: true
    }, function(start, end, label) {
      $('.start_hidden').val(start.format('MM-DD-YYYY HH:mm'));
      $('.end_hidden').val(end.format('MM-DD-YYYY HH:mm'));
    });
  })
};
$(document).on('turbolinks:load', date_range_picker);
