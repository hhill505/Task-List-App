json.array!(@task_lists) do |task_list|
  json.extract! task_list, :id, :name, :description, :task
  json.url task_list_url(task_list, format: :json)
end
