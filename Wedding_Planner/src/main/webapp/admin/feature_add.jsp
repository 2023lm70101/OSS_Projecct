<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Wedding Info</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h3 class="mb-4">Add Wedding Information</h3>

    <form action="addWedding" method="post">
        <div class="mb-3">
            <label for="weddingType" class="form-label">Wedding Type</label>
            <input type="text" class="form-control" id="weddingType" name="weddingType" placeholder="e.g. Traditional, Destination" required>
        </div>

        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="e.g. Royal Wedding, Beach Wedding" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" placeholder="Write wedding description here..." required></textarea>
        </div>

       <div>
            <button type="submit" form="addWedding" class="btn btn-success me-2">Save User</button>
            <a href="service_list.jsp" class="btn btn-danger">Cancel</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
