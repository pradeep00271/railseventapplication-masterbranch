$(window).load(function() {
    $('.week').click(function () {
        $.ajax({
            type: 'GET',
            url: '/home/weekly',
            dataType: "json",
        });
        return false;
    });
});