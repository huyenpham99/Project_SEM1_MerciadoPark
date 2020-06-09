$.getJSON("http://localhost:5000/danh-sach-dich-vu"
    ,function(data) {
        $(".count").append("Count :"+data.length);
      for (var i = 0; i < data.length; i++) {
        $(".ServiceID_"+i).append(data[i].ID_Service);
        $(".nameservice_"+i).append(data[i].Name_Service);



      }
  });
