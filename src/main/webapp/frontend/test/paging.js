let perPage = 9;
let idPage = 1;
let start = 0;
let end = perPage;

const product = [
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1s" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/1/born-to-ride-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },
    { id: 1, image: "../images/yamaha/xecontay/2/60th-white-004.png", title: "xe may1" },


]

let productArr = [];
let showAdd = false;

const addBookBtn = document.getElementById('add');
const name = document.getElementById('name');
const imgLink = document.getElementById('imgLink');
const addBook = document.getElementById('add-book');
addBook.addEventListener('click', () => {
    if (imgLink.value !== '' && name.value !== '') {
        productArr.push({
            id: product.length + 1,
            image: imgLink.value,
            title: name.value
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
    countTotalPage.innerHTML = `Total pages: ${totalPages}`;
    countTotalProduct.innerHTML = `Total Product:  ${productArr.length}`
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
            html += '<div class="content__product__item">';
            html += '<a>';
            html += '<img src=' + item.image + '>';
            html += '</a>';
            html += '<h6>' + item.title + '</h6>';
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
