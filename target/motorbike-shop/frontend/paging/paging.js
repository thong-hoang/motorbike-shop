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
    { id: 22, image: "../images/yamaha/xetayga/7/latte-dark-grey-004.png", title: "Latte Xám Đen", price: "39.000.000VNĐ", priceOrigin: "" },
    { id: 23, image: "../images/yamaha/xetayga/8/x30-monster-004.png", title: "X30 Monster", price: "38.000.000VNĐ", priceOrigin: "" },
    { id: 24, image: "../images/yamaha/xetayga/9/nvx-155vva-pastel-dark-grey-004.png", title: "NVX 155vva Pastel", price: "40.000.000VNĐ", priceOrigin: "" },
    { id: 25, image: "../images/yamaha/xetayga/10/yamaha-classico2011_brown.png", title: "", price: "32.000.000VNĐ", priceOrigin: "" },
    { id: 26, image: "../images/yamaha/xeso/6/sirius-red-black-006.png", title: "Sirius Đỏ Đen Y06", price: "27.000.000VNĐ", priceOrigin: "" },
    { id: 27, image: "../images/yamaha/xetayga/1/freego-mat-grey-smk-004.png", title: "Freego Mat Xám SMK", price: "45.000.000VNĐ", priceOrigin: "37.000.000VNĐ" },
    { id: 28, image: "../images/yamaha/xephankhoilon/6/r15_stdblue_idn_2020-copy.png", title: "R15 Stdin 2022", price: "279.000.000VNĐ", priceOrigin: "" },
    { id: 29, image: "../images/yamaha/xephankhoilon/7/r15m-anni-60th-004.png", title: "R15m Anni 60th", price: "405.000.000VNĐ", priceOrigin: "" },
    { id: 30, image: "../images/yamaha/xephankhoilon/8/r15m-monster-004-2.png", title: "R15m Monster 042", price: "500.000.000VNĐ", priceOrigin: "" },
    { id: 31, image: "../images/yamaha/xephankhoilon/9/2020-yamaha-tenere-700-4.jpg", title: "Yamaha Tenere 2020", price: "359.000.000VNĐ", priceOrigin: "362.000.000VNĐ" },
    { id: 32, image: "../images/yamaha/xephankhoilon/10/2020-yamaha-mt-10-2-1.jpg", title: "Yamaha MT 2020", price: "456.000.000VNĐ", priceOrigin: "" },
    { id: 33, image: "../images/yamaha/xephankhoilon/11/ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk.png", title: "Yamaha Motor VN 2022", price: "475.000.000VNĐ", priceOrigin: "" },
    { id: 34, image: "../images/yamaha/xephankhoilon/12/2021-yamaha-mt-09-4.jpg", title: "Yamaha MT 2021", price: "399.000.000VNĐ", priceOrigin: "" },
    { id: 35, image: "../images/yamaha/xephankhoilon/13/yamaha_mt-09_2022_1.jpg", title: "Yamaha MT 2022", price: "420.000.000VNĐ", priceOrigin: "" },
    { id: 36, image: "../images/yamaha/xephankhoilon/14/yamaha-yzf-r15-2013.png", title: "Yamaha YZF", price: "325.000.000VNĐ", priceOrigin: "" },
    { id: 37, image: "../images/yamaha/xephankhoilon/15/yamaha-mt-15-22.png", title: "Yamaha MT 1522", price: "500.000.000VNĐ", priceOrigin: "" },
    { id: 38, image: "../images/yamaha/xephankhoilon/16/yamaha_motocross_1_nqpg.png", title: "Yamaha Motocross", price: "470.000.000VNĐ", priceOrigin: "" },
    { id: 39, image: "../images/yamaha/xetayga/11/yamaha-nerax.png", title: "Yamaha Nerax", price: "47.000.000VNĐ", priceOrigin: "" },
    { id: 40, image: "../images/yamaha/xetayga/12/yamaha-grande-2020.png", title: "Yamaha Grande 2020", price: "50.000.000VNĐ", priceOrigin: "" },
    { id: 41, image: "../images/yamaha/xetayga/13/yamaha-grande-2017-1.png", title: "Yamaha Grande 2017", price: "38.000.000VNĐ", priceOrigin: "" },
    { id: 42, image: "../images/yamaha/xetayga/14/yamaha-smax-2020.png", title: "Yamaha Smax 2020", price: "42.000.000VNĐ", priceOrigin: "" },
    { id: 43, image: "../images/yamaha/xetayga/15/yamaha-gear-125.png", title: "Yamaha Gear 125", price: "65.000.000VNĐ", priceOrigin: "" },
    { id: 44, image: "../images/yamaha/xetayga/16/yamahamiogt.png", title: "Yamaha Mio GT", price: "55.000.000VNĐ", priceOrigin: "" },
    { id: 45, image: "../images/yamaha/xetayga/17/yamaha-vino.png", title: "Yamaha Vino", price: "48.000.000VNĐ", priceOrigin: "" },
    { id: 46, image: "../images/yamaha/xetayga/18/yamaha-nouvo.png", title: "Yamaha Nouvo", price: "41.000.000VNĐ", priceOrigin: "" },
    { id: 47, image: "../images/yamaha/xetayga/19/2019-yamaha-mio-m3.png", title: "Yamaha Mio 2019", price: "59.000.000VNĐ", priceOrigin: "" },
    { id: 48, image: "../images/yamaha/xeso/8/sirius-red-black-008.png", title: "Sirius Đỏ Đen", price: "30.000.000VNĐ", priceOrigin: "" },
    { id: 49, image: "../images/yamaha/xeso/9/sirius-mat-black-disk-004.png", title: "Sirius Mat Disk", price: "27.000.000VNĐ", priceOrigin: "" },
    { id: 50, image: "../images/yamaha/xeso/10/sirius-bluish-gray-metallic-disk-004.png", title: "Sirius Bluish Metalic", price: "26.000.000VNĐ", priceOrigin: "" },
    { id: 51, image: "../images/yamaha/xeso/11/sirius-black-drum-004-1.png", title: "Sirius Drum 01", price: "29.000.000VNĐ", priceOrigin: "" },
    { id: 52, image: "../images/yamaha/xeso/12/sirius-black-disk-004.png", title: "Sirius Disk Đen", price: "22.000.000VNĐ", priceOrigin: "" },
    { id: 53, image: "../images/yamaha/xeso/13/sirius-yellow-rc-004.png", title: "Sirius RC Vàng", price: "25.000.000VNĐ", priceOrigin: "" },
    { id: 54, image: "../images/yamaha/xeso/14/std-white-metallic-6-hub-004.png", title: "STD Metalic Hub", price: "31.000.000VNĐ", priceOrigin: "" },
    { id: 55, image: "../images/yamaha/xeso/15/yamaha-jupiter-tvs.png", title: "Yamaha Jupiter TVS", price: "30.000.000VNĐ", priceOrigin: "" },
    { id: 56, image: "../images/yamaha/xeso/16/rc-black-metallic-y-004-copy.png", title: "RC Metalic Y Đen", price: "26.000.000VNĐ", priceOrigin: "" },
    { id: 57, image: "../images/yamaha/xeso/17/yamaha-ya-1-5.png", title: "Yamaha Ya 15", price: "24.000.000VNĐ", priceOrigin: "" },
    { id: 58, image: "../images/yamaha/xecontay/6/ex155-petronas-004.png", title: "Exciter 155 Petronas", price: "77.000.000VNĐ", priceOrigin: "" },
    { id: 59, image: "../images/yamaha/xecontay/7/ex155-yellow-grey-004.png", title: "Exciter 155 Vàng Nâu", price: "67.000.000VNĐ", priceOrigin: "" },
    { id: 60, image: "../images/yamaha/xecontay/8/exciter-155-rc-dlx-reddish-yellow-004.png", title: "Exciter 155 RC Reddish", price: "70.000.000VNĐ", priceOrigin: "" },
    { id: 61, image: "../images/yamaha/xecontay/9/exciter-155-mat-black-smartkey-004.png", title: "Exciter 155 Mat Smartkey", price: "72.000.000VNĐ", priceOrigin: "" },
    { id: 62, image: "../images/yamaha/xecontay/10/xe-con-tay-co-dien-yamaha-sr400.png", title: "Yamaha SR400", price: "79.000.000VNĐ", priceOrigin: "" },
    { id: 63, image: "../images/yamaha/xecontay/11/exciter-155-mat-red-004-1.png", title: "Exciter 155 Mat 01", price: "64.000.000VNĐ", priceOrigin: "" },
    { id: 64, image: "../images/yamaha/xecontay/12/exciter-150-pearl-white-004.png", title: "Exciter 150 Pearl Whi", price: "59.000.000VNĐ", priceOrigin: "" },
    { id: 65, image: "../images/yamaha/xecontay/13/exciter-blue-orange-004-1.png", title: "Exciter Xanh Cam", price: "78.000.000VNĐ", priceOrigin: "" },
    { id: 66, image: "../images/yamaha/xecontay/14/exciter-mat-black-004-1.png", title: "Exciter Mat Black", price: "74.000.000VNĐ", priceOrigin: "" },
    { id: 67, image: "../images/yamaha/xecontay/15/yamaha-xsr-115-001.png", title: "Yamaha XSR 115", price: "79.000.000VNĐ", priceOrigin: "" },
    { id: 68, image: "../images/yamaha/xecontay/16/yamaha-150.png", title: "Yamaha 150", price: "80.000.000VNĐ", priceOrigin: "" },
    { id: 69, image: "../images/honda/xecontay/1/winner-x-tieuchuan-2022.jpg", title: "Winner X 2022", price: "85.000.000VNĐ", priceOrigin: "" },
    { id: 70, image: "../images/honda/xecontay/2/winner-x-dacbiet-2022.jpg", title: "Winner X Spe 2022", price: "89.000.000VNĐ", priceOrigin: "" },
    { id: 71, image: "../images/honda/xecontay/3/winner-x-camo-2020.jpg", title: "Winner X Camo 2020", price: "90.000.000VNĐ", priceOrigin: "" },
    { id: 72, image: "../images/honda/xecontay/4/winner-x-thethao-v3-2022.jpg", title: "Winner X V3 Sport ", price: "67.000.000VNĐ", priceOrigin: "" },
    { id: 73, image: "../images/honda/xecontay/5/winner-x-dacbiet-v3-2022.jpg", title: "Winner X V3 Spe", price: "84.000.000VNĐ", priceOrigin: "" },
    { id: 74, image: "../images/honda/xecontay/6/winner-x-tieuchuan-v3-2022.jpg", title: "Winner X V3", price: "85.000.000VNĐ", priceOrigin: "" },
    { id: 75, image: "../images/honda/xecontay/7/winner-x-camo-2022.jpg", title: "Winner X Camo 2022", price: "88.000.000VNĐ", priceOrigin: "" },
    { id: 76, image: "../images/honda/xecontay/8/winner-x-thethao-2022.jpg", title: "Winner X Sport", price: "76.000.000VNĐ", priceOrigin: "" },
    { id: 77, image: "../images/honda/xecontay/9/winner-150.png", title: "Winner 150", price: "71.000.000VNĐ", priceOrigin: "" },
    { id: 78, image: "../images/honda/xecontay/10/msx-2020.jpg", title: "MSX 2020", price: "79.000.000VNĐ", priceOrigin: "" },
    { id: 79, image: "../images/honda/xecontay/11/msx-2021.png", title: "MSX 2021", price: "80.000.000VNĐ", priceOrigin: "" },
    { id: 80, image: "../images/honda/xecontay/12/sonic-2021.jpg", title: "", price: "83.000.000VNĐ", priceOrigin: "" },
    { id: 81, image: "../images/honda/xetayga/1/airblade-160-dacbiet-2022.png", title: "Airblade 160 2022", price: "55.000.000VNĐ", priceOrigin: "" },
    { id: 82, image: "../images/honda/xetayga/2/airblade-125-dacbiet-2022.jpg", title: "Airblade 125 2022", price: "59.000.000VNĐ", priceOrigin: "" },
    { id: 83, image: "../images/honda/xetayga/3/airblade-125-tieuchuan-2021.jpg", title: "Airblade 125 2021", price: "54.000.000VNĐ", priceOrigin: "" },
    { id: 84, image: "../images/honda/xetayga/4/airblade-160-tieuchuan-2023.jpg", title: "Airblade 160", price: "56.000.000VNĐ", priceOrigin: "" },
    { id: 85, image: "../images/honda/xetayga/5/airblade-125-dacbiet-2023.jpg", title: "Airblade 125 Spe", price: "52.000.000VNĐ", priceOrigin: "" },
    { id: 86, image: "../images/honda/xetayga/6/airblade-150-2020.jpg", title: "Airblade 150", price: "49.000.000VNĐ", priceOrigin: "" },
    { id: 87, image: "../images/honda/xetayga/7/sh-mode-cbs-2022.jpg", title: "SH Mode CBS 2022", price: "45.000.000VNĐ", priceOrigin: "" },
    { id: 88, image: "../images/honda/xeso/1/blade-2021.png", title: "Blade 2021", price: "29.000.000VNĐ", priceOrigin: "" },
    { id: 89, image: "../images/honda/xeso/2/blade-2022.png", title: "Blade 2022", price: "27.000.000VNĐ", priceOrigin: "" },
    { id: 90, image: "../images/honda/xeso/3/wave-alpha-2015.jpg", title: "Wave Alpha 2015", price: "24.000.000VNĐ", priceOrigin: "" },
    { id: 91, image: "../images/suzuki/xecontay/1/intruder-150-2022.png", title: "Intruder 150", price: "56.000.000VNĐ", priceOrigin: "" },
    { id: 92, image: "../images/suzuki/xecontay/2/suzuki-satria-2022.png", title: "Suzuki Satria 2022", price: "62.000.000VNĐ", priceOrigin: "" },
    { id: 93, image: "../images/suzuki/xecontay/3/raider-2022.png", title: "Raider 2022", price: "51.000.000VNĐ", priceOrigin: "" },
    { id: 94, image: "../images/suzuki/xecontay/4/gsx150-bandit.png", title: "Sizuki GD150 Bandit", price: "59.000.000VNĐ", priceOrigin: "" },
    { id: 95, image: "../images/suzuki/xecontay/5/gd110.png", title: "Sizuki GD110", price: "53.000.000VNĐ", priceOrigin: "" },
    { id: 96, image: "../images/suzuki/xecontay/6/gsx-s150.jpg", title: "GSX S150", price: "55.000.000VNĐ", priceOrigin: "" },
    { id: 97, image: "../images/honda/xeso/4/wave-alpha-2022.png", title: "Wave Alpha 2022", price: "32.000.000VNĐ", priceOrigin: "" },
    { id: 98, image: "../images/honda/xeso/5/wave-110s.jpg", title: "Wave 110S", price: "26.000.000VNĐ", priceOrigin: "" },
    { id: 99, image: "../images/honda/xeso/6/wave-110rs.jpg", title: "Wave 110RS", price: "29.000.000VNĐ", priceOrigin: "" },
    { id: 100, image: "../images/honda/xeso/7/wave-alpha-zx.jpg", title: "Wave Alpha ZX", price: "27.000.000VNĐ", priceOrigin: "" },
    
    





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
        $('.number-page li').removeClass('active');
        const numPage= document.querySelector('.number-page li');
        numPage.classList.remove('btn-active');
        getCurrentPage(idPage);
        $(`.number-page li:eq(${idPage-1})`).addClass('active');
        getCurrentPage(idPage);
        renderProduct(productArr);

});