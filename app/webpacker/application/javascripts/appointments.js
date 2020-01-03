document.addEventListener('turbolinks:load', () => {
  $('.appointment-date').flatpickr({ minDate: 'today' });
  $('.appointment-time').flatpickr({ enableTime: true, noCalendar: true, dateFormat: "H:i" });
  $('#appointment_symptoms').select2();
  $('#appointment_physician_id').select2();
  $('.select2-container').addClass('w-100')
})
