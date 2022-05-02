export const getProducts = (department) => {
    // debugger;
    return $.ajax({
        method: 'GET',
        url: `/api/products/`,
        data: {department}
    })
}

export const getProduct = (product_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/products/${product_id}`
    })
}