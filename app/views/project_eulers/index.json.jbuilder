json.array!(@project_eulers) do |project_euler|
  json.extract! project_euler, :id, :date, :title, :post
  json.url project_euler_url(project_euler, format: :json)
end
