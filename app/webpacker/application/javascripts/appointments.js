document.addEventListener('turbolinks:load', () => {
  $('.appointment-date').flatpickr({ minDate: 'today' });
  $('.appointment-time').flatpickr({ enableTime: true, noCalendar: true, dateFormat: "H:i" });
})
