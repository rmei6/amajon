import { UPDATE_FILTER } from "../actions/filter_actions";

const defaultState = Object.freeze({
    department: ''
});

const filtersReducer = (state = defaultState,action) => {
    Object.freeze(state);
    switch(action.type){
        case UPDATE_FILTER:
            
        default:
            return state;
    }
}

export default filtersReducer;