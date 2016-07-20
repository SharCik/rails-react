@PeopleSearch = Rect.createClass
  displayName: 'PeopleSearch'

  _handleOnSubmit: (e) ->
    e.preventDefoult()

    searchValue = @refs.serach.getDOMNode().value.trim()

    @props.onFormSubmit(searchValue)

  render: ->
    <div className="filter-wrapper">
      <div className="form-wrapper">
        <form onSubmit = {@_handleOnSubmit}>
          <input ref="search" placeholder="Search people..." type="search"/>
        </form>
      </div>
    </div>