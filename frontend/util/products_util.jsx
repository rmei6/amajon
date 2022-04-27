export const getProducts = (department) => {
    return $.ajax({
        method: 'GET',
        url: `/api/products`,
        data: {department: department}
    })
}

export const getProduct = (product_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/products/${product_id}`
    })
}