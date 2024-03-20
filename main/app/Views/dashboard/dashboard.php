<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> -->
    <script src="https://www.listrindo.com/assets/js/Chart.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:600" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.3/dist/bootstrap-table.min.css">
    <script src="https://unpkg.com/bootstrap-table@1.22.3/dist/bootstrap-table.min.js"></script>
    <style>
        .text-underline-hover {
            text-decoration: none;
        }

        .text-underline-hover:hover {
            text-decoration: underline;
        }

        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,600;1,600&display=swap');

        body {
            font-family: 'Montserrat', sans-serif;
            /* font-optical-sizing: auto; */
            font-weight: 600;
            font-style: normal;
        }
    </style>
</head>

<body>
    <style>
        .bg-primary {
            background-color: #0f5498 !important;
        }

        .financialHightlight {
            color: #0f5498 !important;
        }

        .financialStetment {
            color: #0f5498 !important;
        }
    </style>
    <input type="hidden" class="txt_csrfname" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" />


    <div class="container mb-5">
        <div class="row mt-5">
            <div class="col-md-5">
                <h2>Financial Information</h2>
            </div>
            <div class="col-md-7">
                <div class="row">
                    <div class="col-md-6">
                        <a href="#tabHighlights" class="financialHightlight text-underline-hover float-end" onclick="financialHightlight()">
                            <h4>Financial Highlight</h4>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="#tabStatements" class="financialStetment text-underline-hover" onclick="financialStetment()">
                            <h4>Financial Stetment</h4>
                        </a>
                    </div>
                </div>

            </div>
        </div>
        <div class="mt-5" id="contentBody"></div>
    </div>

    <script>
        var hash = document.URL.substr(document.URL.indexOf('#') + 1);
        var csrfName = $('.txt_csrfname').attr('name');
        var csrfHash = $('.txt_csrfname').val();
        $(document).ready(function() {
            // alert(hash)
            financialHightlight()
            if (hash == 'tabHighlights') {
                financialHightlight()
            } else if (hash == 'tabStatements') {
                financialStetment()
            } else {
                // null
                null
            }
        });


        function financialHightlight() {
            $('.financialStetment').addClass('text-underline-hover');
            $('.financialHightlight').removeClass('text-underline-hover');
            $('#contentBody').html('financialHightlight');
            $.ajax({
                url: "<?= base_url('dashboard/financialHightlight') ?>",
                method: "POST",
                dataType: 'json',
                data: {
                    [csrfName]: csrfHash
                },
                success: function(data) {
                    console.log(data);
                    $.when($('.txt_csrfname').val(data.token)).then($('#contentBody').html(data.view))

                },
            });
        }



        function financialStetment() {
            $('.financialHightlight').addClass('text-underline-hover');
            $('.financialStetment').removeClass('text-underline-hover');
            $('#contentBody').html('Maintance');
        }
    </script>
</body>

</html>