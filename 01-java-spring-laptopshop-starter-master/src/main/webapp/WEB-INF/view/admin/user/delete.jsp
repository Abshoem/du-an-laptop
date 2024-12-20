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
                <div class="col-12 mx-auto">
                    <div class="d-flex justify-content-between">
                        <h3>Delete the user with id = ${id}</h3>
                    </div>
                    <hr />

                    <div class="alert alert-danger mb-2">
                        Are you sure to delete the user id = ${id} ?
                    </div>
                    <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">
                        <div class="mb-3" style="display: none;">
                            <label class="form-label">Id:</label>
                            <form:input value="${id}" type="text" class="form-control" path="id" />
                        </div>

                        <button class="btn btn-danger">Confirm</button>
                    </form:form>


                </div>
            </div>


        </div>
    </body>

    </html>