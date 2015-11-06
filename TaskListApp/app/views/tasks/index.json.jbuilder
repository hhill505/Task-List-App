json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :priorit, :duedate, :iscompleted, :tasklist_id
  json.url task_url(task, format: :json)
end
