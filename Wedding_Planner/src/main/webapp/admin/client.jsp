<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard - Administrator</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
<!--    <link href="css/bootstrap.css" rel="stylesheet">-->
    <link rel="stylesheet" type="text/css"
          href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <style>
        body {
            margin-bottom: 3%;
        }
        table.table.table-striped.table-bordered.table-sm {
            font-size:12px;
        }
        .tooltip {
            font-size: 12px;
        }

        td.special {
            padding: 0;
            padding-top: 8px;
            padding-left:6px;
            padding-bottom:6px;
            margin-top:5px;
            text-transform: capitalize;
        }
        .datepicker {
            font-size: 12px;
        }
      
        div.dataTables_wrapper div.dataTables_paginate {
            font-size: 11px;
        }

        .btn.btn-sm.btn-light.active:hover {
            background: white;
        }

    </style>
</head>

<body>

<%@include file="include/sidebar.jsp"%>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h6 class="h4 mt-4 ml-3">Pending Client</h6>
    <div class="btn-toolbar mb-md-0">
       <!--  <div class="btn-group mr-2">
            <a class="btn btn-md btn-success" style="font-size: 12px;" href="client_add.php"><i class="mdi mdi-account-plus mr-2"></i> Add New Client</a>
        </div> -->
    </div>
</div>


<table id="pending" class="table table-striped table-bordered table-hover table-sm" cellspacing="0" width="100%" style="background: white;padding: 0 5px;">

    <thead>
        <tr>
            <th>Primary Contact</th>
            <th>Bride's Name</th>
            <th>Groom's Name</th>
            <th>Primary Email</th>
            <th>Contact</th>
            <th>Wedding Date</th>
           <!--  <th>Tools</th> -->
        </tr>
    </thead>
   <tbody>
    <%
    AccountDao adao = new AccountDao(FactoryProvider.getFactory());
    List<Account> accounts = adao.getAllAccountData();

    AccountDetailDao addao = new AccountDetailDao(FactoryProvider.getFactory());
    List<AccountDetail> accountDetails = addao.getAllAccountDetailInfo();

    WeddingBookDao wddao = new WeddingBookDao(FactoryProvider.getFactory());
    List<WeddingBook> weddingBooks = wddao.getAllWeddingBookInfo();
 

        for (Account account : accounts) {
            AccountDetail ad = null;
            WeddingBook bookWedding = null;

            // Find corresponding AccountDetail and WeddingBook for this Account
            for (AccountDetail accDetail : accountDetails) {
                if (accDetail.getId() == account.getId()) {
                    ad = accDetail;
                    break;
                }
            }
         

            for (WeddingBook wb : weddingBooks) {
                if (wb.getBooking_Id()==(account.getId())) {
                    bookWedding = wb;
                    break;
                }
            }
    %>
        <tr>
            <td class=""> <%= ad != null ? ad.getFirstname() + " " + ad.getLastname() : "N/A" %></td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getBride() != null) ? bookWedding.getBride() : "Need to fill" %>
            </td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getGroom() != null) ? bookWedding.getGroom() : "Need to fill" %>
            </td>
            <td class="">
                <%= (bookWedding != null) ? bookWedding.getUserEmail() : "N/A" %>
            </td>
            <td class=""> <%= ad != null ? ad.getPhone() : "N/A" %></td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getWeddingDate() != null) ? bookWedding.getWeddingDate() : "N/A" %>
            </td>
          <%--   <td>
                <a href="client_assign.jsp?booking=<%= bookWedding != null ? bookWedding.getBooking_Id() : "#" %>&user_id=<%= account != null ? account.getId() : "#" %>" class="btn btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Assign user to weddings"><i class="mdi mdi-clipboard-account"></i></a>
                <a href="client_edit.jsp?booking=<%= bookWedding != null ? bookWedding.getBooking_Id() : "#" %>&user_id=<%= account != null ? account.getId() : "#" %>" class="btn btn-secondary btn-sm" data-toggle="tooltip" data-placement="top" title="Edit client account information"><i class="mdi mdi-account-edit"></i></a>
            </td> --%>
        </tr>
    <%
        }
    %>
</tbody>
    
</table>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h6 class="h4 mt-4 ml-3">Confirmed Client</h6>
</div>
<table id="confirmed" class="table table-striped table-hover table-bordered table-sm" cellspacing="0" width="100%" style="background: white;padding: 0 5px;">

    <thead>
        <tr>
            <th>Primary Contact</th>
            <th>Bride's Name</th>
            <th>Groom's Name</th>
            <th>Primary Email</th>
            <th>Contact</th>
            <th>Wedding Date</th>
           <!--  <th>Tools</th> -->
        </tr>
    </thead>
    <tbody>
    <%
       
        for (Account account : accounts) {
            AccountDetail ad = null;
            WeddingBook bookWedding = null;

            // Find corresponding AccountDetail and WeddingBook for this Account
            for (AccountDetail accDetail : accountDetails) {
                if (accDetail.getId() == account.getId()) {
                    ad = accDetail;
                    break;
                }
            }

            for (WeddingBook wb : weddingBooks) {
                if (wb.getBooking_Id()==(account.getId())) {
                    bookWedding = wb;
                    break;
                }
               
            }
            if (ad != null && "confirm".equals(ad.getStatus()))     {
    %>
        <tr>
            <td class=""><%= ad != null ? ad.getFirstname() + " " + ad.getLastname() : "N/A" %></td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getBride() != null) ? bookWedding.getBride() : "Need to fill" %>
            </td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getGroom() != null) ? bookWedding.getGroom() : "Need to fill" %>
            </td>
            <td class="">
                <%= (bookWedding != null) ? bookWedding.getUserEmail() : "N/A" %>
            </td>
            <td class=""> <%= ad != null ? ad.getPhone() : "N/A" %></td>
            <td class="">
                <%= (bookWedding != null && bookWedding.getWeddingDate() != null) ? bookWedding.getWeddingDate() : "N/A" %>
            </td>
           <%--  <td>
                <a href="client_assign.jsp?booking=<%= bookWedding != null ? bookWedding.getBooking_Id() : "#" %>&user_id=<%= account != null ? account.getId() : "#" %>" class="btn btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Assign user to weddings"><i class="mdi mdi-clipboard-account"></i></a>
                <a href="client_edit.jsp?booking=<%= bookWedding != null ? bookWedding.getBooking_Id() : "#" %>&user_id=<%= account != null ? account.getId() : "#" %>" class="btn btn-secondary btn-sm" data-toggle="tooltip" data-placement="top" title="Edit client account information"><i class="mdi mdi-account-edit"></i></a>
            </td> --%>
        </tr>
    <%
        }
        }
    %>
</tbody>

     
</table>

<%@include file="include/footer.jsp"%>
</main>
</div>
</div>

<script src="js/jquery-3.2.1.slim.min.js"></script>
<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/popper.min.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#pending').DataTable();
        $('#confirmed').DataTable();
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

</body>
</html>

