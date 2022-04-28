export const getProducts = () => {
    // debugger;
    return $.ajax({
        method: 'GET',
        url: `/api/products`
    })
}

export const getProduct = (product_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/products/${product_id}`
    })
}