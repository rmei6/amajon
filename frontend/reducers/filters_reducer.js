import { UPDATE_FILTER } from "../actions/filter_actions";

const defaultState = Object.freeze({
    department: ''
});

const filtersReducer = (state = defaultState,action) => {
    Object.freeze(state);
    
}