// $(document).ready(function() {
// 	calendar();
// });
// $(document).on('page:load', function() {
// 	calendar();
// });
// $(document).on('ready page:load', function () {
// 	calendar();
// });
$(document).on('page:change', function () {
	calendar();
});
// onLoad(function() {
// 	calendar();
// });
var calendar = function() {
	// page is now ready, initialize the calendar...
	var current_room = function() {
		return window.location.href.match(/rooms\/(\d+)\/bookings/)[1];
	};
	var today_or_later = function() {
		var check = $('#calendar_bookings').fullCalendar('getDate');
		var today = new Date();
		if (check < today) {
			return false;
		} else {
			return true;
		};
	};
	// Various inline settings for fullCalendar.
	$('#calendar_bookings').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		eventSources: [{
			url: '/rooms/' + current_room() + '/bookings/',
		}],
		selectable: {
			month: false,
			agenda: true
		},
		editable: true,
		eventStartEditable: true,
		eventDurationEditable: true,

		// Drop booking
		eventDrop: function(booking) {
			var length = (booking.end - booking.start) / (3600000);

			function updateEvent(booking) {
				$.ajax(
					'/rooms/' + current_room() + '/bookings/' + booking.id, {
						'type': 'PATCH',
						data: {
							booking: {
								start_time: "" + booking.start,
								length: length
							}
						}
					}
				);
			};
			updateEvent(booking);
		},
		// Update booking
		eventResize: function(booking) {
			var length = (booking.end - booking.start) / (3600000);

			function updateEvent(booking) {
				$.ajax(
					'/rooms/' + current_room() + '/bookings/' + booking.id, {
						'type': 'PATCH',
						data: {
							booking: {
								start_time: "" + booking.start,
								length: length
							}
						}
					}
				);
			};
			updateEvent(booking);
		},
		dayClick: function(date, allDay, jsEvent, view) {
			// console.log(view.name);
			if (view.name === "month") {
				$('#calendar_bookings').fullCalendar('gotoDate', date);
				$('#calendar_bookings').fullCalendar('changeView', 'agendaDay');
			}
		},
		select: function(start, end, allDay) {
			if (window.location.href.match(/new/)) {
				if (today_or_later()) {
					var length = (end - start) / (3600000);
					$('#calendar_bookings').fullCalendar('renderEvent', {
						start: start,
						end: end,
						allDay: false
					});
					jQuery.post(
						'/rooms/' + current_room() + '/bookings', {
							booking: {
								start_time: start,
								length: length,
							}
						}
					);
				} else {
					// alert("help!");
				}
			}
		}
	});
};
