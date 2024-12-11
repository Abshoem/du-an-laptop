<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 col-12 mx-auto">
                    <h3>Create a user</h3>
                    <hr />


                    <form:form method="post" action="/admin/user/create1" modelAttribute="newUser">
                        <div class="mb-3">
                            <label class="form-label">Email:</label>
                            <form:input type="email" class="form-control" path="email" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password:</label>
                            <form:input type="password" class="form-control" path="password" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Phone number:</label>
                            <form:input type="text" class="form-control" path="phone" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Full Name:</label>
                            <form:input type="text" class="form-control" path="fullName" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address:</label>
                            <form:input type="text" class="form-control" path="address" />
                        </div>

                        <button type="submit" class="btn btn-primary">Create</button>
                    </form:form>
                </div>
            </div>


        </div>
    </body>

    </html>