$.getJSON("http://localhost:5000/danh-sach-khach-hang"
    ,function(data) {



    $(".count").append("Count :"+data.length);

    for (var i = 0; i < data.length; i++) {
      $(".customerID_"+i).append(data[i].Customer_ID);
      $(".firstname_"+i).append(data[i].Firts_Name);
      $(".lastname_"+i).append(data[i].Last_Name);
      $(".phone_"+i).append(data[i].Phone_Number);
      $(".email_"+i).append(data[i].Email);

    }
});
