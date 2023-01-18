
    /*TRACKS*/
   $('#nav1').on("click", function(e){
       e.preventDefault();
   $.ajax({
       url: 'fetchdata.php',
       type: 'post',
       data: {key: 'track'},
       dataType: 'text',
       success: function(response){
           $('#res').html(response);
       }
   });
});
/*ARTISTS*/
$('#nav2').on("click", function(){
   $.ajax({
       url: 'fetchdata.php',
       type:'post',
       data:{key:'artist'},
       dataType: 'text',
       success: function(response){
           $('#res').html(response);
       }
   });
});
/*ALBUMS*/
$('#nav3').on("click", function(){
   $.ajax({
       url: 'fetchdata.php',
       type:'post',
       data:{key:'album'},
       dataType: 'text',
       success: function(response){
           $('#res').html(response);
       }
   });
});

/*SEARCH*/
$('#search').on("keyup",function(){
   var val=$(this).val();
   $.ajax({
       url: 'fetchsearchdata.php',
       type:'post',
       data:{key: val},
       dataType: 'html',
       success: function(response){
           $('#res').html(response);
       }
   });
});


/*SORT TRACK BY TRACK NAME*/
$('#trackname').on("click",function(){
    $.ajax({
        url: 'sort.php',
        type: 'post',
        data: {key: 'track'},
        dataType: 'html',
        success: function(response){
            $('#res').html(response);
        }
    });
});

/*SORT ARTIST BY ARTIST NAME*/
$('#artistname').on("click",function(){
    $.ajax({
        url: 'sort.php',
        type: 'post',
        data: {key: 'artist'},
        dataType: 'html',
        success: function(response){
            $('#res').html(response);
        }
    });
});

/*SORT ALBUM BY ALBUM NAME*/
$('#albumname').on("click",function(){
    $.ajax({
        url: 'sort.php',
        type: 'post',
        data: {key: 'album'},
        dataType: 'html',
        success: function(response){
            $('#res').html(response);
        }
    });
});


/*SIGN UP VALIDATION*/
$(document).ready(function(){
        $('#confirmpass').on("keyup",function(){
            var confirmpass = $(this).val();
            var pass = $('#pass').val();
            if((pass == "")  && (confirmpass == ""))
            {
                $('#error').html("");
                $('#valid').html("");
            }
            else
            if((pass == "")  && (confirmpass != ""))
            {
                $('#error').html("Enter the password first!");
                $('#valid').html("");
            }
            else
            if(pass!=confirmpass)
            {
                $('#error').html("Password and Confirm Password must have the same value!");
                $('#valid').html("");
            }
            else 
            if(pass === confirmpass)
            {
                $('#error').html("");
                $('#valid').html("Password and Confirm Password Matches");
            }
            else
            if(pass=="")
            {
                $('#error').html("");
                $('#valid').html("");
            }
        });
        $('#pass').on("keyup",function(){
            var confirmpass = $("#confirmpass").val();
            var pass = $(this).val();
            if(confirmpass!="")
            {
                $('#error').html("Enter the password first!");
                $('#valid').html("");
            }
            else
            if((pass == "")  && (confirmpass == ""))
            {
                $('#error').html("");
                $('#valid').html("");
            }
        });
    
});





