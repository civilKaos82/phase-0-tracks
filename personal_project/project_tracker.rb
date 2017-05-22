#Project and Project Manager Tracker
require 'sqlite3'
require 'faker'

#create SQLite3 Database
db = SQLite3::Database.new('projects.db')

#create tables
create_pm_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS project_managers(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

create_projects_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_workflow_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS project_workflow(
    id INTEGER PRIMARY KEY,
    project_id INT,
    projman_id INT,
    thirty_comp BOOLEAN,
    sixty_comp BOOLEAN,
    ninety_comp BOOLEAN,
    hundred_comp BOOLEAN,
    FOREIGN KEY (project_id) REFERENCES projects(id),
    FOREIGN KEY (projman_id) REFERENCES project_managers(id)
  )
SQL

db.execute(create_pm_table_cmd)
db.execute(create_projects_table_cmd)
db.execute(create_workflow_table_cmd)
