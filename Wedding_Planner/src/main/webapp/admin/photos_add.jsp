<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Photos - Administrator</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/dashboard.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="css/dropzone.css">
        <style>
            body {
                margin-bottom: 2%;
            }
            .box-shadow {
                box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.3);
                font-size: 12px;
            }
            .form-control {
                font-size: 12px;
            }
            .datepicker {
                font-size: 12px;
            }
            .btn.btn-light.btn-sm {
                background-color: #e2e6ea;
            }
            .dropzone {
                    border: 6px dashed #17b4bc
            }
            .dz-default.dz-message {
                color: #17b4bc;
                font-size: 24px;
            }
        </style>
    </head>

<body>

<%@include file="include/sidebar.jsp"%>

    <div class="container">
    
        <div class="row">

            <div class="col-lg-8 offset-2 pl-3 pb-3 box-shadow mt-4 pt-3">
                <h5>Upload New Image</h5>
              
                <form method="post" action="" enctype="multipart/form-data">

                    <div class="form-group">
                        <label for="booking_id">Related:</label>
                        <select class="custom-select form-control" id="booking_id" name="booking_id">
                          <option>1</option>
                           <option>1</option>
                        </select>
                    </div>
                   <div class="form-group">
                       <label for="">Title:</label>
                       <input type="text" name="title" class="form-control" placeholder="Enter title">
                   </div>
                   <div class="form-group">
                       <label for="">Caption:</label>
                       <input type="text" name="caption" value="" class="form-control" placeholder="Enter caption">
                   </div>
                    <div class="form-group">
                       <label for="">Alternate Text:</label>
                       <input type="text" name="alternate_text" value="" class="form-control" placeholder="Enter text">
                   </div>
                   <div class="form-group">
                       <textarea name="description" rows="10" class="form-control" placeholder="Enter a description"></textarea>
                   </div>
                   <div class="form-group">
                       <input type="file" name="file">
                   </div>
                   <button type="submit" name="submit" value="" class="btn btn-success btn-sm">Save image</button>
                   <a href="dashboard.jsp" class="btn btn-danger btn-sm">Go Back</a>
                </form><!-- end of input form -->
<br>
                <h5 class="h5">OR Drag Your Images</h5>
                <div id="dropzone-area">
                    <form action="photos_add.php" class="dropzone"></form>  
                </div>
            </div>
        </div>
    </div>

<%@include file="include/footer.jsp"%>
</body>
</html>