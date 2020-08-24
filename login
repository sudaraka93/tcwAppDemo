
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link href="static/css/su_style.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
<script type="text/javascript">
    $(function () {
        $("#login_form").on("submit", function (e) {
            e.preventDefault();
            
            
            
            
            $.ajax({
                dataType: "json",
                url: "login_test",
                type: "POST",
                data: {"user_id": $("#uname").val(), "user_pass": $("#psw").val()},
                success: function (res) {
                    if (res["err"] == 0) {
                        window.location = "/timesheet";
                    } else {
                        alert(res["msg"]);
                    }
                }
            });
        });
    });
</script>
<div id="loginwrap">
    <div id="conSmall">

        <h2 class="center" id="LoginH">Welcome</h2>
        <form id="login_form" method="post">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" id="uname" name="uname" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" id="psw" name="psw" required>

            <button type="submit">Login</button>
        </form>

    </div>
</div>
<div class="Footer" id="fCbox">ID Password info goes here</div>
</body>
</html>
