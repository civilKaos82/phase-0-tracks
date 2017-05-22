#Project and Project Manager Tracker
require 'sqlite3'
require 'faker'

#create SQLite3 Database
db = SQLite3::Database.new('projects.db')

#create the three tables required for Projects, PM's, & Project Workflows.
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

#Populate the tables with some data
  #Start with 5 Project Mangers of random names as a default. More will be added by user later.
def create_projman(db, first_name, last_name)
  db.execute('INSERT INTO project_managers (first_name, last_name) VALUES (?, ?)', [first_name, last_name])
end

#5.times do
#  create_projman(db, Faker::Name.first_name, Faker::Name.last_name)
#end

  #Start with 5 Projects. These names will be inputted manually as I would like to choose their names.
  #Will add functionality to add additional projects by user input below.
def create_project(db, proj_name)
  db.execute('INSERT INTO projects (name) VALUES (?)', [proj_name])
end

#create_project(db, 'BART Hayward Maintenance Facility')
#create_project(db, 'California High-Speed Train')
#create_project(db, 'Lathrop Intermodal Shipping Facility')
#create_project(db, 'Caltrain CBOSS PTC Design-Build')
#create_project(db, 'Amtrak LA Backup Generation System')

  #Here we will populate the project_workflow table with data as well
def create_project_workflow(db, project_id, projman_id)
  db.execute('INSERT INTO project_workflow (project_id, projman_id, thirty_comp, sixty_comp, ninety_comp, hundred_comp) VALUES (?, ?, "false", "false", "false", "false")', [project_id, projman_id])
end

#create_project_workflow(db, 1, 1)
#create_project_workflow(db, 2, 1)
#create_project_workflow(db, 3, 2)
#create_project_workflow(db, 4, 3)
#create_project_workflow(db, 5, 4)
