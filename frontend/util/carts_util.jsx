export const fetchItems = () => {
    return $.ajax({
        method:"GET",
        url:"/api/carts"
    })
}

//update method to get carts by userid, currently getting all carts
  
export const createCart = (cart) => {
    return $.ajax({
        method: "POST",
        url: "/api/carts",
        data: {cart}
    })
}
  
export const updateCart = (cart) => {
    return  $.ajax({
        method: "PATCH",
        url: `/api/carts/${cart.id}`,
        data: {cart}
    })
}

//create delete cart method