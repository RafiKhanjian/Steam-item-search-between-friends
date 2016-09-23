class BackpacksReducer

  initialState:
    items: []
    descriptions: {}
    results: {}
    state: BACKPACKS_IDLE
    order: [
      STATUS_ONLINE
      STATUS_INGAME
      STATUS_OFFLINE
      STATUS_UNKNOWN
    ]
    colorOrder: [
      OPTION_CATEGORY
      OPTION_QUALITY
      OPTION_RARITY
    ]
    colorExclude: [
      CHOICE_STANDARD
    ]

  reset: ( state ) ->
    state.items = []
    state.descriptions = {}
    state.results = {}
    state.state = BACKPACKS_NOTDISPLAYED
    return state

  state: ( state, action ) ->
    state.state = action.type
    return state

  _tagColor: ( state, description ) ->
    color = null

    if description?.tags?
      _.each state.colorOrder, ( optionName ) ->
        tag = _.find description.tags, category_name: optionName
        if tag?.color? and not color?
          if not _.includes state.colorExclude, tag.name
            color = tag.color

    if description?._sisbftags? and color?
      description._sisbftags.push
        hidden: true
        category_name: OPTION_COLOR
        name: color
        color: color

    return color

  _tagLevel: ( state, description ) ->
    level = null

    if description?.type?
      level = description.type.match /Level\s(\d+)/i
      if level?
        level = level[ 1 ]

    if description?._sisbftags? and level?
      description._sisbftags.push
        category_name: OPTION_LEVEL
        name: level

    return level

  push: ( state, action ) ->
    if action.backpack.success? and action.backpack.success is true
      person = action.person
      items = action.backpack.rgInventory
      descriptions = action.backpack.rgDescriptions

      _.each items, ( item ) =>
        itemId = item.id
        descriptionId = "#{item.classid}_#{item.instanceid}"
        description = descriptions[ descriptionId ]

        if description?
          description._sisbftags = []
          color = @_tagColor state, description
          level = @_tagLevel state, description
          state.descriptions[ descriptionId ] = description

          state.items.push
            itemId: itemId
            descriptionId: descriptionId
            person: person
            color: color

    return state

  passed: ( state, descriptionId ) ->
    items = _.filter state.items, descriptionId: descriptionId
    _.each items, ( item ) =>
      person = item.person
      status = person.status
      steamId32 = person.steamId32
      itemId = item.itemId
      description = state.descriptions[ descriptionId ]

      state.results[ status ] = {} if not state.results[ status ]?
      state.results[ status ][ steamId32 ] = {} if not state.results[ status ][ steamId32 ]?
      state.results[ status ][ steamId32 ][ itemId ] =
        asset: item
        person: person
        description: description

    return state

  search: ( state, action ) ->
    state.results = {}
    search = action.search

    filters = {}
    _.each action.filters, ( filter, option ) =>
      filters[ option ] = filter.selected if filter.enabled and filter.selected.length > 0

    _.each state.descriptions, ( description ) =>
      if @filter description, search, filters
        @passed state, "#{description.classid}_#{description.instanceid}"

    state.state = BACKPACKS_NOTDISPLAYED
    return state

  filter: ( description, search, filters ) ->
    accept = false
    inspection = {}

    inspection.have_market_name = if description?.market_name? then true else false

    name = if description?.name? then description.name.toLowerCase() else ''
    search = search.toLowerCase()
    inspection.string = _.includes name, search

    _.each filters, ( selected, option ) ->
      inspection[ option ] = false
      _.each selected, ( choice ) ->
        tag =
          name: choice.name
          category_name: option
        if description?.tags?
          inspection[ option ] = true if _.find description.tags, tag
        if description?._sisbftags? and not inspection[ option ]
          inspection[ option ] = true if _.find description._sisbftags, tag

    accept = not _.includes _.values( inspection ), false
    return accept

  reducer: ( state = @initialState, action ) ->
    switch action.type
      when REDUX_INIT, SETTINGS_CHANGED
        @reset state
      when PERSON_LOADED
        @push state, action
      when BACKPACKS_SEARCH
        @search state, action
      when BACKPACKS_DISPLAYED
        @state state, action
    return state

  constructor: () ->
    return @reducer.bind @
