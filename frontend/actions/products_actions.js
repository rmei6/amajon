import * as ProductsUtil from '../util/products_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS'
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT'

export const receiveProducts = (products) => ({
    type: RECEIVE_PRODUCTS,
    products
})


export const receiveProduct = (product) => ({
    type: RECEIVE_PRODUCT,
    product
})


export const fetchProducts = (department) => dispatch => {
    // debugger;
    if(department === 'products'){
        return ProductsUtil.getProducts()
            .then(products => dispatch(receiveProducts(products)))
    }
    return ProductsUtil.getProducts(department)
        .then(products => dispatch(receiveProducts(products)))
}


export const fetchProduct = (product_id) => dispatch => {
    // debugger;
    return ProductsUtil.getProduct(product_id)
        .then(product => dispatch(receiveProduct(product)))
}
