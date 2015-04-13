// $(document).ready(function() {
// 	calendar();
// });
$(document).on('page:load', function() {
	calendar();
});
var calendar = function() {
	// page is now ready, initialize the calendar...
	var current_room = function() {
		return window.location.href.match(/rooms\/(\d+)\/viewings/)[1];
	};
	var today_or_later = function() {
		var check = $('#calendar_viewings').fullCalendar('getDate');
		var today = new Date();
		if (check < today) {
			return false;
		} else {
			return true;
		};
	};
	// Various inline settings for fullCalendar.
	$('#calendar_viewings').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		eventSources: [{
			url: '/rooms/' + current_room() + '/viewings/',
		}],
		selectable: {
			month: false,
			agenda: true
		},
		editable: true,
		eventStartEditable: true,
		eventDurationEditable: true,

		// Drop viewing
		eventDrop: function(viewing) {
			var length = (viewing.end - viewing.start) / (3600000);

			function updateEvent(viewing) {
				$.ajax(
					'/rooms/' + current_room() + '/viewings/' + viewing.id, {
						'type': 'PATCH',
						data: {
							viewing: {
								start_time: "" + viewing.start,
								length: length
							}
						}
					}
				);
			};
			updateEvent(viewing);
		},
		// Update viewing
		eventResize: function(viewing) {
			var length = (viewing.end - viewing.start) / (3600000);

			function updateEvent(viewing) {
				$.ajax(
					'/rooms/' + current_room() + '/viewings/' + viewing.id, {
						'type': 'PATCH',
						data: {
							viewing: {
								start_time: "" + viewing.start,
								length: length
							}
						}
					}
				);
			};
			updateEvent(viewing);
		},
		dayClick: function(date, allDay, jsEvent, view) {
			// console.log(view.name);
			if (view.name === "month") {
				$('#calendar_viewings').fullCalendar('gotoDate', date);
				$('#calendar_viewings').fullCalendar('changeView', 'agendaDay');
			}
		},
		select: function(start, end, allDay) {
			if (window.location.href.match(/new/)) {
				if (today_or_later()) {
					var length = (end - start) / (3600000);
					$('#calendar_viewings').fullCalendar('renderEvent', {
						start: start,
						end: end,
						allDay: false
					});
					jQuery.post(
						'/rooms/' + current_room() + '/viewings', {
							viewing: {
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
