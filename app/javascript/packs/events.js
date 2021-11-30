jQuery(() => {
    $(function () {
        var availableTags = [
            "Created by Pradeep",
            "Created by Prem",
            "test",
            "vennila"
        ];
        $("#tags").autocomplete({
            source: availableTags
        });
    });

    $( function() {
        $( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
    } );

    $( function() {
        $( "#datepicker1" ).datepicker({dateFormat: 'yy-mm-dd'});
    } );


})
// $(window).load(function() {
//     $('.test').change(function () {
//         var id = $(this).attr("note");
//         if($(this).is(':checked'))
//         {
//             status = 'active'
//         }else {
//             status = 'inactive'
//         }
//         $.ajax({
//             type: 'PUT',
//             url: '/events/'+id+'/event_status',
//             data: { status: status } ,
//             dataType: "json",
//         });
//         return false;
//     });
// });
 /*$('#stat').submit(function(){
        console.log("Working")
        $.ajax({
            type: this.method,
            url: this.action,
            data: $(this).serialize(),
        });
        return false;
    });*/



