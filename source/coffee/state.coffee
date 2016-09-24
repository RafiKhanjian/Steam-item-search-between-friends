StateReducers = Redux.combineReducers
  Debug: new DebugReducer
  Settings: new MenuReducer
  Persons: new PersonsReducer
  Tags: new TagsReducer
  Backpacks: new BackpacksReducer
  Filters: new FiltersReducer

State = Redux.createStore StateReducers

if State.getState().Debug
  State.subscribe () ->
    console.log 'STATE', State.getState()
