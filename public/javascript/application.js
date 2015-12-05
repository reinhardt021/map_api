$(function() {

  var handlers = {
    container: $('#friends').find('tbody'),
  };

  function requestJSON(url, callback) {
    $.ajax({
      url: url,
      method: 'GET',
      complete: function (xhr) {
        callback.call(null, JSON.parse(xhr.responseText));
      } 
    });
  }

  var publicKey = ''; // saved keys off file for security reasons
  var privateKey = ''; // saved keys off file for security reasons
  var ts = Date.now();
  var hash = md5(ts+privateKey+publicKey);
  var requestUrl = 'http://gateway.marvel.com/v1/public/characters';
  var reqUrl = requestUrl+'?ts='+ts+'&apikey='+publicKey+'&hash='+hash;
  console.log(reqUrl);

  requestJSON(reqUrl, function (resource) {
    var characters = resource.data.results;
    var character = characters[4];
    var description = character.description;
    console.log(character);
    $('<h4>').text(character.name).appendTo('#images');
    $('<img>').attr('src',character.thumbnail.path+'.'+character.thumbnail.extension).appendTo('#images');
    $('<div>').addClass('well').text('History: '+ description).appendTo('#images');
    $('<div>').text('# of stories: '+ character.stories.available).appendTo('#images');
    $('<div>').text('# of comics: '+ character.comics.available).appendTo('#images');
    $('<div>').text('# of series: '+ character.series.available).appendTo('#images');
    $('<a>').attr('href',character.urls[0].url).text(character.urls[0].type).appendTo('#images');

  });

  $('#images').on('click', function () {
    var box = $(this);
    box.find('img').toggleClass('circle')
    setTimeout(function () {
      // box.removeClass('circle');
    }, 2000);
  });

});
