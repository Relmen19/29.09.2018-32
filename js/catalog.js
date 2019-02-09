let catalogProductEl = document.querySelector(".catalog-product");
let catalogPaginationEl = document.querySelector(".catalog-pagination");

let renderCatalog = (data) =>{
    catalogPaginationEl.innerHTML = '';
    catalogProductEl.innerHTML = '';
    for ( i = 1; i <= data.paginationInfo.countPage; i++ ){
        let divPagination = document.createElement('div');
        divPagination.classList.add("catalog-pagination-item");
        divPagination.innerHTML = i;     
        if ( data.paginationInfo.nowPage == i ){
            divPagination.classList.add("active");
        };
        divPagination.setAttribute('data-page', i);
        divPagination.addEventListener('click', function(){
            updateCatalogFromAjax(this.getAttribute('data-page'));

        });
        catalogPaginationEl.append( divPagination );
    };
    data.products.forEach( (productItem) => {
        let productItems = document.createElement("div");
        productItems.classList.add('catalog-product-productItems');
        let img_src = '/images/default_photo.png';
        if ( productItem.photo != '' ){
            img_src = productItem.photo;
        };
        productItems.innerHTML = `
            <img src="${img_src}" >
            <div class="product-name" >${productItem.name}</div>
            <div class="product-price" >Цена: ${productItem.price}</div>
        `;

        catalogProductEl.append(productItems); 
    } );
    
};

let updateCatalogFromAjax = ( page = 1 ) =>{

    let xhr = new XMLHttpRequest();
    xhr.open('get', `/catalog_handler.php?page=${page}`);
    xhr.send();

    xhr.onreadystatechange = () => {
        if( xhr.readyState == 4 && xhr.status == 200 ){
            renderCatalog( JSON.parse( xhr.responseText ) );
        };
    };
};

updateCatalogFromAjax(1);