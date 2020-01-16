
    function payOrderForm() {
        var form = '<form role="form" class="form-horizontal">'
            + '{% csrf_token %}'
            + '<div class="form-group">' 
            + '<label for="tender" class="col-sm-3 control-label">Upload File</label> '
            + '<div class="col-sm-5"> '
            + '<a class="file-input-wrapper btn form-control file2 inline btn btn-primary">'
            + '<i class="glyphicon glyphicon-file"></i> Browse '
            + '<input type="file" class="form-control file2 inline btn btn-primary" data-label="Browse" style="left: 41.7px; top: 17.2125px;" />'
            + '</a>'
            + '</div>' 
            + '</div>'
            + '<div class="form-group">'
            + '<div class="col-sm-3"></div>'
            + '<div class="col-sm-4">'
            + '<button type="submit" class="btn btn-primary">Upload</button>'
            + '</div>'
            + '</div>'
            + '</form>';
        $("#form").empty();
        $("#form").append(form);
    }
