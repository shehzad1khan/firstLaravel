<!doctype html>
<html lang="en">
  <head>
    @stack("title")
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

  </head>
  <body>

        <div class="offset-2 col-md-8">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs justify-content-center" id="navId" role="tablist">
                <li class="nav-item">
                    <a href="../home.blade.php" class="nav-link" data-bs-toggle="tab">Home</a>
                </li>
                <li class="nav-item">
                    <a href="../about.blade.php" class="nav-link" data-bs-toggle="tab">About</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a href="../contact.blade.php" class="nav-link" data-bs-toggle="tab">Contact</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a href="#" class="nav-link disabled" data-bs-toggle="tab">Disabled</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="tab1Id" role="tabpanel"></div>
                <div class="tab-pane fade" id="tab2Id" role="tabpanel"></div>
                <div class="tab-pane fade" id="tab3Id" role="tabpanel"></div>
                <div class="tab-pane fade" id="tab4Id" role="tabpanel"></div>
                <div class="tab-pane fade" id="tab5Id" role="tabpanel"></div>
            </div>

            <!-- (Optional) - Place this js code after initializing bootstrap.min.js or bootstrap.bundle.min.js -->
            <script>
                var triggerEl = document.querySelector('#navId a')
                bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name
            </script>
    </div>

