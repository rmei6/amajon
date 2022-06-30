import * as CartsUtil from "../util/carts_util"

export const ADD_CART = 'ADD_CART'
export const RECEIVE_ITEMS = 'RECEIVE_ITEMS'
export const UPDATE_CART = 'UPDATE_CART'

export const receiveItems = (items) => ({
    type: RECEIVE_ITEMS,
    items
})


export const addNewItem = (item) => ({
    type: ADD_CART,
    item
})


export const changeQuantity = (quantity) => ({
    type: UPDATE_CART,
    quantity
})


export const fetchCart = () => dispatch => {
    debugger;
    return CartsUtil.fetchItems()
        .then((items)=> dispatch(receiveItems(items)))
}


export const addItem = (item) => dispatch => {
    return CartsUtil.createCart(item)
        .then((newItem) => dispatch(addNewItem(newItem)))
}


export const updateCart = (item) => dispatch => {
    return CartsUtil.updateCart(item)
        .then((quantity) => dispatch(changeQuantity(quantity)))
}
