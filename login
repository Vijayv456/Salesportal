@model designs.Models.file

@{
    Layout = null;
}

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
    <style>
        .home {
            position: absolute;
            top: 15%;
            left: 27%;
            width: 600px;
            height: 450px;
            margin: 0;
            float: left;
            perspective: 500px;
        }

        .cont {
            position: absolute;
            width: 100%;
            height: 100%;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            transition: transform 2s;
            transform-style: preserve-3d;
        }

        .home:hover .cont {
            transform: rotateY(180deg);
            transition: transform 2s;
        }

        .f {
            position: absolute;
            height: 100%;
            width: 100%;
            background: white;
            text-align: center;
            font-size: 3rem;
            color: rgba(31,29,71,1);
            border-radius: 5px;
            backface-visibility: hidden;
        }

        .b {
            position: absolute;
            height: 100%;
            width: 100%;
            text-align: center;
            border-radius: 5px;
            color: white;
            transform: rotateY( 180deg );
            backface-visibility: hidden;
        }
    </style>
</head>
<body style="background:rgba(31,29,71,1)">
    @Scripts.Render("~/bundles/jquery")
    @Scripts.Render("~/bundles/jqueryval")
    @Styles.Render("~/Content/css")
    @Scripts.Render("~/bundles/modernizr")


    <div class="home">
        <div class="cont">
            <div class="f" style="background: rgba(219,52,30,1);font-size:3rem">
                Login
            </div>
            <div class="b" style="background-color:rgba(31,29,71,1)">
                @using (Html.BeginForm())
                {
                    @Html.AntiForgeryToken()

                    <div class="form-horizontal">

                        @Html.ValidationSummary(true, "", new { @class = "text-danger" })
                       
                        <div>
                            @Html.LabelFor(model => model.Name, htmlAttributes: new { @class = "control-label col-md-2" })
                        </div>
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.Name, new { htmlAttributes = new { @class = "form-control" } })
                               
                            </div>
                            <div>
                                @Html.ValidationMessageFor(model => model.Name, "", new { @class = "text-danger" })
                            </div>
                       
                            <div>
                                @Html.LabelFor(model => model.Password, htmlAttributes: new { @class = "control-label col-md-2" })
                            </div>
                       
                            
                            <div class="col-md-10">
                                @Html.PasswordFor(model => model.Password, new { htmlAttributes = new { @class = "form-control" } })
                               
                            </div>
                            <div>
                                @Html.ValidationMessageFor(model => model.Password, "", new { @class = "text-danger" })
                            </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Create" class="btn btn-default" />
                            </div>
                        </div>
                    </div>
                }
            </div>
        </div>
    </div>





</body>
</html>
