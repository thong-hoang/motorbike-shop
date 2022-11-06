let perPage = 9;
let idPage = 1;
let start = 0;
let end = perPage;

const product = [
    { id: 1, image: "../images/yamaha/xeso/7/sirius-dark-blue-007.png", title: "Sirius Xanh Đen Y07", price: "28.000.000VNĐ", priceOrigin: "" },
    { id: 2, image: "../images/yamaha/xetayga/2/freego-white-metallic-004.png", title: "Freego White Metallic", price: "37.000.000VNĐ", priceOrigin: "" },
    { id: 3, image: "../images/yamaha/xetayga/3/new-grande-limited-pink-004.png", title: "Yamaha Grande Limited", price: "32.000.000VNĐ", priceOrigin: "33.000.000VNĐ" },
    { id: 4, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "Born To Ride", price: "55.000.000VNĐ", priceOrigin: "" },
    { id: 5, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "Yamaha anni 60th", price: "60.000.000VNĐ", priceOrigin: "" },
    { id: 6, image: "../images/yamaha/xecontay/3/monster-04-copy.png", title: "Yamaha Monster", price: "49.000.000VNĐ", priceOrigin: "" },
    { id: 7, image: "../images/yamaha/xecontay/4/exciter-155-gp-deep-purple-004.png", title: "Exciter 155 GB Deep", price: "58.000.000VNĐ", priceOrigin: "60.000.000VNĐ" },
    { id: 8, image: "../images/yamaha/xecontay/5/exciter-155-gp-004.png", title: "Exciter 155 GB", price: "54.000.000VNĐ", priceOrigin: "" },
    { id: 9, image: "../images/yamaha/xeso/1/jupiter-pearl-white-004.png", title: "Jupiter Pearl", price: "26.000.000VNĐ", priceOrigin: "" },
    { id: 10, image: "../images/yamaha/xeso/2/jupiter-mat-black-004.png", title: "Jupiter Mat", price: "32.000.000VNĐ", priceOrigin: "" },
    { id: 11, image: "../images/yamaha/xeso/3/jupiter-finn-urban-blue-004.png", title: "Jupiter Finn Urban", price: "29.000.000VNĐ", priceOrigin: "" },
    { id: 12, image: "../images/yamaha/xeso/4/jupiter-finn-blue-metallic-004-1.png", title: "Jupiter Finn Metallic", price: "27.000.000VNĐ", priceOrigin: "" },
    { id: 13, image: "../images/yamaha/xeso/5/sirius-red-metallic-004.png", title: "Sirius Red Metallic", price: "30.000.000VNĐ", priceOrigin: "" },
    { id: 14, image: "../images/yamaha/xephankhoilon/1/2021_mtn320-a_pgd_usa_mt-03_storm-fluo_360_036-1.png", title: "USA MT-03 Storm Fluo", price: "355.000.000VNĐ", priceOrigin: "" },
    { id: 15, image: "../images/yamaha/xephankhoilon/2/mt15-gp-004.png", title: "MT15 GB", price: "435.000.000VNĐ", priceOrigin: "" },
    { id: 16, image: "../images/yamaha/xephankhoilon/3/r15-gp-004.png", title: "R15 GB", price: "375.000.000VNĐ", priceOrigin: "" },
    { id: 17, image: "../images/yamaha/xephankhoilon/4/yamaha-92904.png", title: "Yamaha RT 92904", price: "455.000.000VNĐ", priceOrigin: "" },
    { id: 18, image: "../images/yamaha/xephankhoilon/5/r15m-silver-004.png", title: "R15M Silver", price: "370.000.000VNĐ", priceOrigin: "" },
    { id: 19, image: "../images/yamaha/xetayga/4/new-grande-mat-orange-004.png", title: "New Grande Mat", price: "42.000.000VNĐ", priceOrigin: "" },
    { id: 20, image: "../images/yamaha/xetayga/5/new-janus-mat-black-pink-smk-004.png", title: "New Janus Mat SMK", price: "39.000.000VNĐ", priceOrigin: "" },
    { id: 21, image: "../images/yamaha/xetayga/6/janus-white-004.png", title: "Janus White", price: "33.000.000VNĐ", priceOrigin: "" },
    { id: 22, image: "../images/yamaha/xetayga/7/latte-dark-grey-004.png", title: "Latte Xám Đen", price: "35.000.000VNĐ", priceOrigin: "" },
    { id: 23, image: "../images/yamaha/xetayga/8/x30-monster-004.png", title: "X30 Monster", price: "38.000.000VNĐ", priceOrigin: "" },
    { id: 24, image: "../images/yamaha/xetayga/9/nvx-155vva-pastel-dark-grey-004.png", title: "NVX 155vva Pastel", price: "40.000.000VNĐ", priceOrigin: "" },
    { id: 25, image: "../images/yamaha/xetayga/10/yamaha-classico2011_brown.png", title: "", price: "32.000.000VNĐ", priceOrigin: "" },
    { id: 26, image: "../images/yamaha/xeso/6/sirius-red-black-006.png", title: "Sirius Đỏ Đen Y06", price: "27.000.000VNĐ", priceOrigin: "" },
    { id: 27, image: "../images/yamaha/xetayga/1/freego-mat-grey-smk-004.png", title: "Freego Mat Xám SMK", price: "35.000.000VNĐ", priceOrigin: "37.000.000VNĐ" },
    { id: 28, image: "../images/yamaha/xephankhoilon/6/r15_stdblue_idn_2020-copy.png", title: "R15 Stdin 2022", price: "279.000.000VNĐ", priceOrigin: "" },
    { id: 29, image: "../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png", title: "R15m Anni 60th", price: "405.000.000VNĐ", priceOrigin: "" },
    { id: 30, image: "../images/yamaha/xephankhoilon/8/r15m-monster-004-2.png", title: "R15m Monster 042", price: "500.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 3, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 4, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 5, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 6, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 7, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 8, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 9, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    // { id: 100, image: "", title: "", price: "35.000.000VNĐ", priceOrigin: "" },
    
    





]

let productArr = [];
let showAdd = false;

const addBookBtn = document.getElementById('add');
const name = document.getElementById('name');
const price = document.getElementById('price');
const priceOrigin = document.getElementById('priceOrigin');
const imgLink = document.getElementById('imgLink');
const addBook = document.getElementById('add-book');
addBook.addEventListener('click', () => {
    if (imgLink.value !== '' && name.value !== '' && price.value !== '') {
        productArr.push({
            id: product.length + 1,
            image: imgLink.value,
            title: name.value,
            price: price.value,
            priceOrigin: priceOrigin.value

        })
    }
});


function highlightText() {
    const title = document.querySelectorAll('.content__product__item h6');
    title.forEach((title, index) => {
        let titleText = title.innerHTML;
        let indexOf = Number(titleText.toLocaleLowerCase().indexOf(searchText.value.toLocaleLowerCase()));
        let searchTextLength = searchText.value.length;
        titleText = titleText.substring(0, indexOf) + "<span class='highlight'>" + titleText.substring(indexOf, indexOf + searchTextLength) + "</span>" + titleText.substring(indexOf + searchTextLength, titleText.length);
        title.innerHTML = titleText;
        console.log(titleText);
    })
}


productArr = product;


const pageConfig = document.querySelector('.page-config select');
const mySelect = document.getElementById('mySelect');
const countTotalPage = document.querySelector('.total-page');
const countTotalProduct = document.querySelector('.total-item');

let totalPages = Math.ceil(productArr.length / perPage);
const searchText = document.querySelector('.content__search input');
const searchBtn = document.getElementById('search');


function initRender(productAr, totalPage) {
    renderProduct(productAr);
    renderListPage(totalPage);
}

initRender(productArr, totalPages);

function getCurrentPage(indexPage) {
    start = (indexPage - 1) * perPage;
    end = indexPage * perPage;
    totalPages = Math.ceil(productArr.length / perPage);
    countTotalPage.innerHTML = `Tổng số trang: ${totalPages}`;
    countTotalProduct.innerHTML = `Tổng số sản phẩm:  ${productArr.length}`
}

const deleteBtn = document.querySelectorAll('.content__product__item .delete');

deleteBtn.forEach((item, index) => {
    deleteBtn[index].addEventListener('click', () => {
        product.splice(index, 1);
        productArr = product;
        renderProduct(productArr)
    });
});

getCurrentPage(1);

searchBtn.addEventListener('click', () => {
    idPage = 1;
    productArr = [];
    product.forEach((item, index) => {
        if (item.title.toLocaleLowerCase().indexOf(searchText.value.toLocaleLowerCase()) != -1) {
            productArr.push(item);
        }
    });
    if (productArr.length === 0) {
        $('.no-result').css('display', 'block')
    } else {
        $('.no-result').css('display', 'none')
    }
    getCurrentPage(idPage);
    initRender(productArr, totalPages);
    changePage();
    if (totalPages <= 1) {
        $('.btn-prev').addClass('btn-active');
        $('.btn-next').addClass('btn-active');
    } else {
        $('.btn-next').removeClass('btn-active');
    }
});

searchText.addEventListener("keyup", (event) => {
    if (event.keyCode === 13) {
        event.preventDefault();
        searchBtn.click();
    }
});

addBookBtn.addEventListener('click', () => {
    showAdd = !showAdd;
    if (showAdd) {
        $('.add-book').css('display', 'flex');
    } else {
        $('.add-book').css('display', 'none');
    }
})


pageConfig.addEventListener('change', () => {
    idPage = 1;
    perPage = Number(pageConfig.value);
    getCurrentPage(idPage);
    initRender(productArr, totalPages);
    if (totalPages == 1) {
        $('.btn-prev').addClass('btn-active');
        $('.btn-next').addClass('btn-active');
    } else {
        $('.btn-next').removeClass('btn-active');
    }
    changePage();
});



function renderProduct(product) {
    html = '';
    const content = product.map((item, index) => {
        if (index >= start && index < end) {
            html += '<div class="content__product__item" >';
            html += '<a href="./product-details.html">';
            html += '<img src=' + item.image + '>';

            html += '<h6>' + item.title + '<br><br>' + '<p class="price-text"><span class="price-sale"> ' + item.priceOrigin + '</span>' + item.price + '</p></h6>';
            html += '</a>';
            html += '</div>';
            return html;
        }
    });
    document.getElementById('product').innerHTML = html;
    highlightText();
}

function renderListPage(totalPages) {
    let html = '';
    html += `<li class="current-page active"><a>${1}</a></li>`;
    for (let i = 2; i <= totalPages; i++) {
        html += `<li><a>${i}</a></li>`;
    }
    if (totalPages === 0) {
        html = ''
    }
    document.getElementById('number-page').innerHTML = html;
}

function changePage() {
    const idPages = document.querySelectorAll('.number-page li');
    const a = document.querySelectorAll('.number-page li a');
    for (let i = 0; i < idPages.length; i++) {
        idPages[i].onclick = function () {
            let value = i + 1;
            const current = document.getElementsByClassName('active');
            current[0].className = current[0].className.replace('active', '');
            this.classList.add('active');
            if (value > 1 && value < idPages.length) {
                $('.btn-prev').removeClass('btn-active');
                $('.btn-next').removeClass('btn-active');
            }
            if (value == 1) {
                $('.btn-prev').addClass('btn-active');
                $('.btn-next').removeClass('btn-active');
            }
            if (value == idPages.length) {
                $('.btn-next').addClass('btn-active');
                $('.btn-prev').removeClass('btn-active');
            }
            idPage = value;
            getCurrentPage(idPage);
            renderProduct(productArr);
        };
    }
}

changePage();

$('.btn-next').on('click', () => {
    idPage++;
    if (idPage > totalPages) {
        idPage = totalPages;
    }
    if (idPage == totalPages) {
        $('.btn-next').addClass('btn-active');
    } else {
        $('.btn-next').removeClass('btn-active');
    }
    console.log(idPage);
    const btnPrev = document.querySelector('.btn-prev');
    btnPrev.classList.remove('btn-active');
    $('.number-page li').removeClass('active');
    $(`.number-page li:eq(${idPage - 1})`).addClass('active');
    getCurrentPage(idPage);
    renderProduct(productArr);
});

$('.btn-prev').on('click', () => {
    idPage--;
    if (idPage <= 0) {
        idPage = 1;
    }
    if (idPage == 1) {
        $('.btn-prev').addClass('btn-active');
    } else {
        $('.btn-prev').removeClass('btn-active');
    }
    const btnNext = document.querySelector('.btn-next');
    btnNext.classList.remove('btn-active');
    $('.number-page li').removeClass('active');
    $(`.number-page li:eq(${idPage - 1})`).addClass('active');
    getCurrentPage(idPage);
    renderProduct(productArr);
});
$('.number-page li').on('click', () => {
    idPage;
    if (idPage <= 0) {
        idPage = 1;
    }
    if (idPage == 1) {
        $('.number-page li').addClass('btn-active');
    } else {
        $('.number-page li').removeClass('btn-active');
    }
    const numPage= document.querySelector('.number-page li');
    numPage.classList.remove('btn-active');
    $('.number-page li').removeClass('active');
    $(`.number-page li:eq(${idPage - 1})`).addClass('active');
    getCurrentPage(idPage);
    renderProduct(productArr);
});