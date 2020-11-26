<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
{$data.css}
{$data.js}
<script>
    if('{$data.login_false}' != ''){
        alert("Tài khoản hoặc mật khẩu không chính xác!");
    }
</script>
<div class="materialContainer">
    <div class="box">
        <div class="title">Đăng nhập</div>
        <form method="post">
            <div class="input">
                <label for="name">Tài khoản</label>
                <input type="text" name="name" id="name" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                <span class="spin"></span>
            </div>
            <div class="input">
                <label for="pass">Mật khẩu</label>
                <input type="password" name="pass" id="pass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                <span class="spin"></span>
            </div>
            <div class="button login">
                <button type="submit" name="login" id="login" value="login" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
                    <span>Đăng nhập</span><i class="fa fa-check"></i>
                </button>
            </div>
        </form>
        <a href="" class="pass-forgot">Quên mật khẩu?</a>
    </div>
    <div class="overbox">
        <div class="material-button alt-2"><span class="shape"></span></div>
        <div class="title">Đăng ký</div>
        <div class="input">
            <label for="regname">Tài khoản</label>
            <input type="text" name="regname" id="regname" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="regpass">Mật khẩu</label>
            <input type="password" name="regpass" id="regpass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="reregpass">Nhập lại mật khẩu</label>
            <input type="password" name="reregpass" id="reregpass" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');">
            <span class="spin"></span>
        </div>
        <div class="button">
            <button ><span>Đăng ký</span></button>
        </div>
    </div>
</div>