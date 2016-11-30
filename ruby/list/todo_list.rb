class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete_if { |got_done| got_done == item }
  end

  def get_item(list_position)
    @list[list_position]
  end
end
