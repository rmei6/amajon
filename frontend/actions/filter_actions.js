import { fetchProducts } from "./products_actions";

export const UPDATE_FILTER = 'UPDATE_FILTER'

export const changeFilter = (filter, value) => ({
    type: UPDATE_FILTER,
    filter,
    value
})

export const updateFilter = (filter,value) => (dispatch, getState) => {
    dispatch(changeFilter(filter,value));
    return fetchProducts(getState().ui.filters)(dispatch);
}