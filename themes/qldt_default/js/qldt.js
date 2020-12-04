/**
 * @Project NUKEVIET 4.x
 * @Author Thi Đình Nguyễn <ng.thi.0805@gmail.com>
 * @Copyright (C) 2020 Thi Đình Nguyễn. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Wed, 02 Dec 2020 03:47:08 GMT
 */

$("#anh_sv").change(function(event)
{  
  RecurFadeIn();
  readURL(this);    
});

$("#anh_sv").on('click',function(event){
  RecurFadeIn();
});

function readURL(input)
{    
 if (input.files && input.files[0])
      {   
        var reader = new FileReader();
        var filename = $("#anh_sv").val();
        filename = filename.substring(filename.lastIndexOf('\\')+1);
        reader.onload = function(e)
         {
           $('#blah').attr('src', e.target.result);
           $('#blah').hide();
           $('#blah').fadeIn(500);      
         }
        reader.readAsDataURL(input.files[0]);    
      }
  $(".alert").removeClass("loading").hide();
}

function RecurFadeIn()
{ 
  console.log('ran');
  FadeInAlert("Wait for it...");  
}

function FadeInAlert(text)
{
  $(".alert").show();
  $(".alert").text(text).addClass("loading");  
}