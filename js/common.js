// $(function () {
// 	$(".btn_time").mouseover(function(){
// 		$("#price").css("display","block");

// 	 });

// 	  $(".btn_time").mouseout(function(){
// 		$("#price").css("display","none");
// 	 });

//   });

// $(function () {
// 	$('.btn_time').each(function () {
// 		if ($(this).hover) {
// 			$(this).mouseenter(function () {
// 				$("#price").css("display", "block");
// 			});
// 		}
// 		else {
// 			$(this).mouseleave(function () {
// 				$("#price").css("display", "none");
// 			});
// 		}
// 	});
// });


//burger menu

$(".toggle_mnu").click(function () {
	$(".sandwich").toggleClass("active");
});

$(".toggle_mnu").click(function () {
	if ($(".sandwich").hasClass("active")) {
		$(".top_mnu").fadeIn(600);
	} else {
		$(".top_mnu").fadeOut(600); //исчезает при нажатии 
	};
});

//----------- popup

//open popup
$('.btn_time').click(function () {
	$('.js-overlay').fadeIn();
	$('body').css('overflow', 'hidden');
});

// закрыть на крестик
$('.btn-close').click(function () {
	$('.js-overlay').fadeOut();

	$('body').css('overflow', 'auto');
});
// закрыть по клику вне окна
$(document).mouseup(function (e) {
	var popup = $('.js-popup');
	if (e.target != popup[0] && popup.has(e.target).length === 0) {
		$('.js-overlay').fadeOut();
		$('body').css('overflow', 'auto');
	}
});


//Заголовок фильма
var moviesName = $('.a').text();
console.log(moviesName);
moviesName = '<h3 class="name">' + moviesName + '</h3>';


var cinemaHall1 = {
	row: [9, 9, 9, 9, 9, 9, 9, 9, 9, 9]

},
	cinemaHallMap = '';
$.each(cinemaHall1.row, function (row, numberOfSeats) {
	cinemaHallRow = '';
	for (i = 1; i <= numberOfSeats; i++) {
		// собираем ряды
		cinemaHallRow += '<div class="seat" data-row="' +
			i + '" data-seat="' +
			i + '">&nbsp;</div>';
	}
	//сборка зала
	cinemaHallMap += cinemaHallRow + '<div class="passageBetween">&nbsp;</div>';
});

$('.mvsnm').html(moviesName);
//добавление  в html
$('.zal1').html(cinemaHallMap);
$('.seat:odd').addClass('safezone');
$('.seat:even').on('click', function (e) {
	// если первый раз кликнули билет выкупили, 
	// если повторно значит вернули билет
	$(e.currentTarget).toggleClass('buy');
	//показываем сколько билетов выкуплено
	showBaySeat();
});
// запрещает выбор места с классом safezone
$('safezone').on('click', function (e) {
	e.preventDefault();
	return false;
});


function showBaySeat() {
	var result = '<h3 class="urchoise">Вы выбрали:</h3>';
	//показываем список выкупленных мест
	$.each($('.seat.buy'), function (key, item) {
		result += '<div class="ticket">Ряд: ' +
			$(item).data().row + ' Место:' +
			$(item).data().seat + '</div>';
	});

	$('.result').html(result);
}


// var card = document.querySelector('.card');
// card.addEventListener('click', function() {
//   card.classList.toggle('is-flipped');
// });

//flip

$('.flip').on("click", function () {
	$('.card').addClass('is-flipped');
	$('.flip').css("display", "none");
});

$('.getback').on("click", function () {
	$('.card').removeClass('is-flipped');
	$('.flip').css("display", "block");

});


// form

$(function () {
	$('.tickets_form').submit(function (e) {

		$.ajax({
			type: "POST",
			url: "ticket_mail.php",
			data: $(this).serialize()
		}).done(function () {
			console.log('success');
			$(this).find('input').val(''); //очистка 
			$('#ticket').trigger('reset');
		}).fail(function () {
			console.log('fail');
		});
		//отмена действия по умолчанию для кнопки submit
		e.preventDefault();
	});
});

$(document).ready(function () {
	$('.form').submit(function () { // проверка на пустоту заполненных полей. 
		if (document.form.email.value == '') {
			valid = false;
			return valid;
		}
		$.ajax({
			type: "POST", //method
			url: "mail.php",
			data: $(this).serialize() //переобразует данные в строку
		}).done(function () {

			$(this).find('input').val(''); //очистка 
			$('#form').trigger('reset');
		});
		return false;
	});
});

//gallery

var imgs = []; //array of imgs
var ind;
$('.js-gallery').each(function (index) {
	imgs[index] = $(this).attr('src');
});

$('.js-gallery').on("click", function () {
	$('.popimg').attr('src', $(this).attr('src')); //replace src
	$('.lightbox').fadeIn();
	$('body').css('overflow', 'hidden');

	$('.js-gallery').each(function (index) {
		if ($('.popimg').attr('src') == imgs[index]) { //get index of clicked img
			ind = index;
		}
	});
	console.log(ind);
});

$(document).mouseup(function (e) {
	var popup = $('.figure');
	if (e.target != popup[0] && popup.has(e.target).length === 0) {
		$('.lightbox').fadeOut();
		$('body').css('overflow', 'auto');
	}
});

$(".prev").click(function () { //btn prev

	if (ind == 0) {
		ind = imgs.length - 1;
	}
	else {
		ind--;
	}
	$('.popimg').attr('src', imgs[ind]);


})

$(".next").click(function () { //btn next
	if (ind == imgs.length - 1) {
		ind = 0;
	}
	else {0
	}
	
	$('.popimg').attr('src', imgs[ind]);
})


