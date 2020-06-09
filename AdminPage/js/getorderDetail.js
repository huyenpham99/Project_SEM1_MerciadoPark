$.getJSON("http://localhost:5000/danh-sach-orderDetail"
    ,function(data) {
      $(".count").append("Count :"+data.length);
      for (var i = 0; i < data.length; i++) {
        $(".ID_OrderDetail_"+i).append(data[i].ID_OrderDetail);
        $(".FirstName_"+i).append(data[i].Firts_Name);
        $(".LastName_"+i).append(data[i].Last_Name);
        $(".NameTicket_"+i).append(data[i].Name_Ticket);
        $(".Amount_"+i).append(data[i].Amount);
        $(".Total_"+i).append(data[i].Total);
        $(".TypePayment_"+i).append(data[i].Type_Payment);
        $(".Status_"+i).append(data[i].Status);
        // data[i].Day_Go = new Date(data[i].Day_Go);
          $(".OrderDate_"+i).append(data[i].Order_Date);
        $(".DayGo_"+i).append(data[i].Day_Go);



      }
  });
