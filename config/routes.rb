RedmineApp::Application.routes.draw do
  match '/projects/:project_id' => redirect('/projects/%{project_id}/wiki');
end