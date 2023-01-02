<%@ page contentType="text/html;charset=UTF-8" %>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div>
                        <p class="font-weight-bold">${SITE_NAME}.</p>
                        <p>Cơ quan cấp: Phòng Đăng ký kinh doanh – Sở Kế hoạch và Đầu tư TP Hồ Chí Minh
                        <p>Địa chỉ: ${SITE_ADDRESS}</p>
                    </div>
                    <div class="footer__payment">
                        <a><img src="../images/general/logoSaleNoti.png" alt="" style="width: 150px;"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <a href="#">
                        <h6>Liên hệ</h6>
                    </a>
                    <ul>
                        <li><a>Hotline (miễn phí): ${SITE_PHONE}</a></li>
                        <li><a>Email: ${SITE_EMAIL}</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <a href="#">
                        <h6>Chính sách bảo mật</h6>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright__text">
                    <p>Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script>
                        Copyright by VTV VietNam
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Tìm kiếm">
        </form>
    </div>
</div>