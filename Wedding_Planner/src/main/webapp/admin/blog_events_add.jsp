<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>New User Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>New User Information</h3>
        <div>
            <button type="submit" form="userForm" class="btn btn-success me-2">Save User</button>
            <a href="blog_events.jsp" class="btn btn-danger">Cancel</a>
        </div>
    </div>

    <form id="userForm" action="AddUserServlet" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="photo" class="form-label">Photo:</label>
            <input type="file" class="form-control" id="photo" name="photo" accept="image/*" required>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <label for="firstname" class="form-label">Firstname:</label>
                <input type="text" class="form-control" id="firstname" name="firstname" required>
            </div>
            <div class="col-md-6">
                <label for="lastname" class="form-label">Lastname:</label>
                <input type="text" class="form-control" id="lastname" name="lastname" required>
            </div>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="mb-3">
            <label for="username" class="form-label">Username:</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>

        <div class="mb-3">
            <label for="designation" class="form-label">Designation:</label>
            <select class="form-select" id="designation" name="designation" required>
                <option value="">Select Designation</option>
                <option value="Administrator">Administrator</option>
                <option value="Manager">Manager</option>
                <option value="Staff">Staff</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">Address:</label>
            <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
        </div>

        <div class="mb-3">
            <label for="dateCreated" class="form-label">Date Created:</label>
            <input type="text" class="form-control" id="dateCreated" name="dateCreated" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" readonly>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
