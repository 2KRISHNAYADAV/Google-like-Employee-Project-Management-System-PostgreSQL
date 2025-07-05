-- CREATE TABLE departments (
--     dept_id SERIAL PRIMARY KEY,
--     dept_name VARCHAR(100),
--     head_id INT
-- );


-- CREATE TABLE salaries (
--     salary_id SERIAL PRIMARY KEY,
--     base_salary NUMERIC,
--     bonus NUMERIC,
--     stock_options NUMERIC,
--     level VARCHAR(10),
--     effective_from DATE
-- );



-- CREATE TABLE employees (
--     employee_id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     role VARCHAR(50),
--     dept_id INT REFERENCES departments(dept_id),
--     joining_date DATE,
--     salary_id INT REFERENCES salaries(salary_id),
--     manager_id INT -- optional for hierarchy
-- );





-- CREATE TABLE projects (
--     project_id SERIAL PRIMARY KEY,
--     project_name VARCHAR(150),
--     start_date DATE,
--     end_date DATE,
--     status VARCHAR(20)
-- );




-- CREATE TABLE employee_projects (
--     emp_proj_id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees(employee_id),
--     project_id INT REFERENCES projects(project_id),
--     role_in_project VARCHAR(50),
--     hours_per_week INT
-- );





-- CREATE TABLE productsgoogleyout (
--     product_id SERIAL PRIMARY KEY,
--     product_name VARCHAR(100),
--     dept_id INT REFERENCES departments(dept_id),
--     product_manager_id INT REFERENCES employees(employee_id)
-- );

-- CREATE TABLE performance_reviews (
--     review_id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees(employee_id),
--     reviewer_id INT REFERENCES employees(employee_id),
--     rating INT,
--     review_period VARCHAR(20),
--     comments TEXT
-- );


-- CREATE TABLE locations (
--     location_id SERIAL PRIMARY KEY,
--     city VARCHAR(100),
--     country VARCHAR(100),
--     office_name VARCHAR(100),
--     capacity INT
-- );


-- CREATE TABLE employee_locations (
--     emp_loc_id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees(employee_id),
--     location_id INT REFERENCES locations(location_id),
--     from_date DATE,
--     to_date DATE
-- );


-- CREATE TABLE tool_usage_logs (
--     log_id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees(employee_id),
--     tool_name VARCHAR(100),
--     login_time TIMESTAMP,
--     logout_time TIMESTAMP,
--     ip_address VARCHAR(50)
-- );


-- CREATE TABLE access_rights (
--     access_id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees(employee_id),
--     resource_name VARCHAR(100),
--     access_type VARCHAR(50),
--     granted_on DATE
-- );


-- CREATE TABLE audit_logs (
--     audit_id SERIAL PRIMARY KEY,
--     event_type VARCHAR(20),
--     employee_id INT REFERENCES employees(employee_id),
--     timestamp TIMESTAMP,
--     changed_table VARCHAR(50),
--     old_value TEXT,
--     new_value TEXT
-- );



-- --------------------------------------------------------------------------------------------------

-- INSERT INTO departments (dept_name) VALUES
-- ('Huels Inc'),
-- ('Murray, Murphy and Gutmann'),
-- ('Carter, Mann and Luettgen'),
-- ('Ortiz, Smith and Jast'),
-- ('Grady LLC'),
-- ('Mitchell-Wintheiser'),
-- ('Bergnaum PLC'),
-- ('Fritsch Group'),
-- ('Harber-Wuckert'),
-- ('Rutherford, Torp and Windler'),
-- ('Dickens-Hessel'),
-- ('Watsica and Sons'),
-- ('Zieme-Morissette'),
-- ('Heller, Runolfsdottir and Kirlin'),
-- ('Fadel PLC'),
-- ('Gislason-Klocko'),
-- ('Howell Group'),
-- ('Tremblay, Swift and Runolfsson'),
-- ('Doyle Group'),
-- ('Howe-Moore');



SELECT * FROM departments;


INSERT INTO salaries (base_salary, bonus, stock_options, level, effective_from) VALUES
(171216.03, 11308.56, 24327.62, 'L3', '2023-04-22'),
(220087.64, 36899.16, 86284.96, 'L4', '2021-12-09'),
(134489.15, 49769.39, 80283.30, 'L5', '2024-02-25'),
(233649.15, 23233.64, 78833.16, 'L4', '2020-08-02'),
(92795.33, 19275.78, 37062.27, 'L6', '2022-01-11'),
(167606.42, 12770.63, 37490.00, 'L5', '2020-05-17'),
(157649.17, 19191.80, 85927.85, 'L3', '2023-07-28'),
(215273.19, 31321.21, 74111.47, 'L7', '2022-07-25'),
(171146.63, 46244.95, 26220.28, 'L3', '2022-11-05'),
(213730.41, 10901.12, 83252.60, 'L6', '2023-10-16'),
(129654.70, 35480.77, 18893.82, 'L8', '2020-01-26'),
(156100.02, 20620.97, 40897.83, 'L6', '2021-06-29'),
(104652.71, 34391.09, 42934.95, 'L7', '2021-02-12'),
(132830.41, 19898.47, 42921.68, 'L5', '2023-09-22'),
(167235.00, 43431.44, 14709.55, 'L4', '2021-10-30'),
(233433.21, 15550.74, 18517.77, 'L8', '2022-09-17'),
(177761.24, 16844.15, 89891.57, 'L7', '2020-07-04'),
(205775.08, 15558.10, 22621.26, 'L4', '2024-01-04'),
(145244.67, 10922.94, 67551.30, 'L5', '2023-05-09'),
(152121.23, 21694.91, 50657.77, 'L6', '2021-04-13');



INSERT INTO employees (name, email, role, dept_id, joining_date, salary_id) VALUES
('James Green', 'samantha44@example.com', 'Engineer', 2, '2021-02-22', 7),
('Rebecca Lewis', 'gibson.jacqueline@example.org', 'HR', 3, '2022-03-28', 1),
('Dawn Gallagher', 'christina65@example.net', 'Admin', 1, '2020-08-07', 2),
('Jason Martin', 'juanmoore@example.com', 'Manager', 12, '2020-07-01', 10),
('Stephen Freeman', 'cynthia41@example.org', 'Director', 4, '2023-04-08', 5),
('Andrea Drake', 'lsmith@example.org', 'Engineer', 8, '2021-11-23', 3),
('Dr. Elizabeth Farmer', 'dlong@example.org', 'Engineer', 9, '2020-04-14', 4),
('Jeffrey Warner', 'carlosclark@example.com', 'Manager', 10, '2023-05-13', 6),
('Catherine Murray', 'davidblair@example.org', 'Engineer', 5, '2022-10-06', 8),
('Erik Macdonald', 'karenharris@example.org', 'Admin', 11, '2023-08-01', 9),
('Brittany Rivera', 'wattsandrew@example.com', 'Engineer', 6, '2021-06-06', 11),
('Patricia Hensley', 'wattsbrian@example.com', 'Engineer', 7, '2021-03-13', 12),
('Dr. Karen Oconnor', 'amy40@example.org', 'HR', 13, '2022-06-16', 13),
('Amy Park', 'williamsangel@example.com', 'Manager', 14, '2023-12-14', 14),
('George Castro', 'jonathandavid@example.com', 'Engineer', 15, '2020-09-10', 15),
('Jacob Garcia', 'nicole46@example.com', 'Director', 16, '2023-06-03', 16),
('Anna Vasquez', 'mitchellbarbara@example.com', 'Engineer', 17, '2020-03-17', 17),
('Tammy Reeves', 'tking@example.com', 'Engineer', 18, '2021-12-23', 18),
('Deborah Fernandez', 'pricevalerie@example.com', 'Admin', 19, '2023-01-15', 19),
('Matthew Hall', 'mooresteven@example.org', 'Manager', 20, '2022-08-04', 20);





INSERT INTO projects (project_name, start_date, end_date, status) VALUES
('Team-oriented full-range implementation', '2021-09-13', '2025-06-06', 'Completed'),
('Object-based maximized service-desk', '2021-10-22', '2025-02-25', 'Planned'),
('Total dedicated framework', '2022-11-14', '2025-05-16', 'On Hold'),
('Centralized homogeneous functionalities', '2023-01-23', '2025-06-11', 'Ongoing'),
('Versatile asynchronous conglomeration', '2023-03-28', '2025-06-09', 'Ongoing'),
('Multi-lateral hybrid forecast', '2022-08-17', '2025-02-28', 'Completed'),
('Digitized optimizing migration', '2022-10-11', '2025-03-22', 'Ongoing'),
('Cloned responsive synergy', '2022-09-15', '2025-05-17', 'Planned'),
('Operative bifurcated solution', '2021-11-23', '2025-06-18', 'Completed'),
('Upgradable empowering projection', '2023-03-12', '2025-01-04', 'On Hold'),
('Enhanced incremental firmware', '2023-02-11', '2025-02-27', 'Completed'),
('Open-source asymmetric contingency', '2023-06-26', '2025-01-16', 'Ongoing'),
('Business-focused asynchronous moratorium', '2023-08-10', '2025-06-08', 'Ongoing'),
('Pre-emptive regional productivity', '2022-01-14', '2025-04-19', 'Planned'),
('Optional scalable capability', '2021-07-25', '2025-05-30', 'Completed'),
('Sharable interactive orchestration', '2021-06-18', '2025-06-03', 'Ongoing'),
('Switchable executive productivity', '2023-09-09', '2025-01-06', 'Planned'),
('Cross-group responsive collaboration', '2022-05-01', '2025-05-10', 'On Hold'),
('Virtual cohesive concept', '2022-11-25', '2025-06-26', 'Ongoing'),
('Multi-layered hybrid knowledgeuser', '2022-04-11', '2025-04-12', 'Completed');




INSERT INTO employee_projects (employee_id, project_id, role_in_project, hours_per_week) VALUES
(1, 2, 'Developer', 20),
(2, 1, 'Lead', 35),
(3, 4, 'Analyst', 15),
(4, 3, 'Developer', 30),
(5, 5, 'Lead', 25),
(6, 6, 'Developer', 40),
(7, 7, 'Analyst', 18),
(8, 8, 'Lead', 32),
(9, 9, 'Developer', 25),
(10, 10, 'Analyst', 12),
(11, 11, 'Lead', 36),
(12, 12, 'Developer', 28),
(13, 13, 'Analyst', 24),
(14, 14, 'Developer', 20),
(15, 15, 'Lead', 38),
(16, 16, 'Analyst', 17),
(17, 17, 'Developer', 22),
(18, 18, 'Lead', 33),
(19, 19, 'Analyst', 30),
(20, 20, 'Developer', 16);


INSERT INTO products (product_name, dept_id, product_manager_id) VALUES
('Interactive integration synergy', 1, 1),
('Distributed disintermediate interface', 2, 2),
('Virtual synergy migration', 3, 3),
('Advanced community application', 4, 4),
('Visionary network solution', 5, 5),
('Focused biometric support', 6, 6),
('Scalable secure API', 7, 7),
('Intuitive user experience', 8, 8),
('Centralized analytics engine', 9, 9),
('Cross-platform cloud platform', 10, 10),
('User-centric learning algorithm', 11, 11),
('Collaborative blockchain API', 12, 12),
('Sustainable AI dashboard', 13, 13),
('Multi-tier web interface', 14, 14),
('Reactive IoT grid', 15, 15),
('Proactive identity system', 16, 16),
('Encrypted communication protocol', 17, 17),
('Hybrid DevOps pipeline', 18, 18),
('Autonomous security module', 19, 19),
('Responsive ML studio', 20, 20);



INSERT INTO performance_reviews (employee_id, reviewer_id, rating, review_period, comments) VALUES
(1, 2, 4, '2023-Q2', 'Excellent leadership.'),
(2, 3, 5, '2022-Q4', 'Great collaboration.'),
(3, 4, 3, '2021-Q3', 'Good improvement potential.'),
(4, 5, 4, '2024-Q1', 'Effective in delivery.'),
(5, 6, 2, '2020-Q4', 'Needs better punctuality.'),
(6, 7, 5, '2021-Q2', 'Outstanding contribution.'),
(7, 8, 3, '2022-Q1', 'Decent performance.'),
(8, 9, 4, '2023-Q3', 'Dependable team member.'),
(9, 10, 5, '2024-Q2', 'Top performer.'),
(10, 11, 2, '2020-Q2', 'Can improve in tech depth.'),
(11, 12, 4, '2022-Q4', 'Reliable and motivated.'),
(12, 13, 5, '2023-Q1', 'Highly recommended for promotion.'),
(13, 14, 3, '2021-Q1', 'Solid but inconsistent.'),
(14, 15, 2, '2022-Q3', 'Lacks initiative.'),
(15, 16, 5, '2024-Q2', 'Leadership excellence.'),
(16, 17, 4, '2020-Q3', 'Skilled developer.'),
(17, 18, 3, '2021-Q4', 'Helpful and consistent.'),
(18, 19, 4, '2023-Q2', 'Quick learner.'),
(19, 20, 5, '2022-Q2', 'Exceeds expectations.'),
(20, 1, 3, '2021-Q3', 'Moderate impact.');




INSERT INTO locations (city, country, office_name, capacity) VALUES
('New York', 'USA', 'Google NYC', 300),
('San Francisco', 'USA', 'Google SF', 500),
('London', 'UK', 'Google London', 400),
('Bangalore', 'India', 'Google India', 450),
('Tokyo', 'Japan', 'Google Tokyo', 250),
('Sydney', 'Australia', 'Google Sydney', 300),
('Toronto', 'Canada', 'Google Toronto', 200),
('Zurich', 'Switzerland', 'Google Zurich', 280),
('Paris', 'France', 'Google Paris', 260),
('Sao Paulo', 'Brazil', 'Google Brazil', 350),
('Seoul', 'South Korea', 'Google Seoul', 330),
('Singapore', 'Singapore', 'Google Singapore', 370),
('Dublin', 'Ireland', 'Google Ireland', 390),
('Berlin', 'Germany', 'Google Berlin', 410),
('Madrid', 'Spain', 'Google Spain', 360),
('Milan', 'Italy', 'Google Italy', 220),
('Dubai', 'UAE', 'Google UAE', 280),
('Shanghai', 'China', 'Google Shanghai', 300),
('Moscow', 'Russia', 'Google Moscow', 310),
('Amsterdam', 'Netherlands', 'Google NL', 270);




INSERT INTO employee_locations (employee_id, location_id, from_date, to_date) VALUES
(1, 1, '2022-01-01', '2025-01-01'),
(2, 2, '2023-01-01', '2025-01-01'),
(3, 3, '2021-01-01', '2025-01-01'),
(4, 4, '2022-01-01', '2025-01-01'),
(5, 5, '2023-01-01', '2025-01-01'),
(6, 6, '2021-01-01', '2025-01-01'),
(7, 7, '2022-01-01', '2025-01-01'),
(8, 8, '2023-01-01', '2025-01-01'),
(9, 9, '2021-01-01', '2025-01-01'),
(10, 10, '2022-01-01', '2025-01-01'),
(11, 11, '2023-01-01', '2025-01-01'),
(12, 12, '2021-01-01', '2025-01-01'),
(13, 13, '2022-01-01', '2025-01-01'),
(14, 14, '2023-01-01', '2025-01-01'),
(15, 15, '2021-01-01', '2025-01-01'),
(16, 16, '2022-01-01', '2025-01-01'),
(17, 17, '2023-01-01', '2025-01-01'),
(18, 18, '2021-01-01', '2025-01-01'),
(19, 19, '2022-01-01', '2025-01-01'),
(20, 20, '2023-01-01', '2025-01-01');









INSERT INTO tool_usage_logs (employee_id, tool_name, login_time, logout_time, ip_address) VALUES
(1, 'Gmail', '2025-06-01 08:01:00', '2025-06-01 09:31:00', '192.168.1.1'),
(2, 'Docs', '2025-06-01 10:15:00', '2025-06-01 11:15:00', '192.168.1.2'),
(3, 'Meet', '2025-06-01 12:00:00', '2025-06-01 12:45:00', '192.168.1.3'),
(4, 'Drive', '2025-06-01 14:00:00', '2025-06-01 15:30:00', '192.168.1.4'),
(5, 'Docs', '2025-06-01 08:30:00', '2025-06-01 09:45:00', '192.168.1.5'),
(6, 'Meet', '2025-06-01 10:00:00', '2025-06-01 10:40:00', '192.168.1.6'),
(7, 'Drive', '2025-06-01 11:00:00', '2025-06-01 12:00:00', '192.168.1.7'),
(8, 'Gmail', '2025-06-01 13:00:00', '2025-06-01 14:00:00', '192.168.1.8'),
(9, 'Docs', '2025-06-01 15:00:00', '2025-06-01 16:00:00', '192.168.1.9'),
(10, 'Meet', '2025-06-01 09:00:00', '2025-06-01 10:00:00', '192.168.1.10'),
(11, 'Drive', '2025-06-01 10:30:00', '2025-06-01 11:15:00', '192.168.1.11'),
(12, 'Gmail', '2025-06-01 12:15:00', '2025-06-01 13:30:00', '192.168.1.12'),
(13, 'Docs', '2025-06-01 14:30:00', '2025-06-01 15:45:00', '192.168.1.13'),
(14, 'Meet', '2025-06-01 16:00:00', '2025-06-01 17:00:00', '192.168.1.14'),
(15, 'Drive', '2025-06-01 09:45:00', '2025-06-01 11:00:00', '192.168.1.15'),
(16, 'Gmail', '2025-06-01 11:15:00', '2025-06-01 12:30:00', '192.168.1.16'),
(17, 'Docs', '2025-06-01 13:15:00', '2025-06-01 14:30:00', '192.168.1.17'),
(18, 'Meet', '2025-06-01 15:00:00', '2025-06-01 15:45:00', '192.168.1.18'),
(19, 'Drive', '2025-06-01 08:45:00', '2025-06-01 09:30:00', '192.168.1.19'),
(20, 'Gmail', '2025-06-01 10:30:00', '2025-06-01 11:30:00', '192.168.1.20');





INSERT INTO audit_logs (event_type, employee_id, timestamp, changed_table, old_value, new_value) VALUES
('INSERT', 1, '2025-05-20 10:01:00', 'employees', NULL, 'name=James Green'),
('UPDATE', 2, '2025-05-20 11:15:00', 'salaries', 'bonus=5000', 'bonus=8000'),
('DELETE', 3, '2025-05-20 12:30:00', 'projects', 'status=Planned', NULL),
('UPDATE', 4, '2025-05-20 13:45:00', 'departments', 'head_id=5', 'head_id=6'),
('INSERT', 5, '2025-05-20 14:00:00', 'employees', NULL, 'name=Stephen Freeman'),
('UPDATE', 6, '2025-05-20 15:20:00', 'performance_reviews', 'rating=3', 'rating=4'),
('INSERT', 7, '2025-05-20 16:10:00', 'locations', NULL, 'city=New York'),
('UPDATE', 8, '2025-05-20 17:30:00', 'access_rights', 'access_type=read', 'access_type=write'),
('INSERT', 9, '2025-05-20 18:40:00', 'projects', NULL, 'project_name=AI Assistant'),
('DELETE', 10, '2025-05-20 19:50:00', 'audit_logs', 'event_type=INSERT', NULL),
('UPDATE', 11, '2025-05-20 10:20:00', 'salaries', 'level=L3', 'level=L4'),
('INSERT', 12, '2025-05-20 11:35:00', 'products', NULL, 'product_name=ML Studio'),
('UPDATE', 13, '2025-05-20 12:55:00', 'departments', 'dept_name=Cloud', 'dept_name=Cloud Infra'),
('DELETE', 14, '2025-05-20 14:05:00', 'employees', 'name=Anna Vasquez', NULL),
('INSERT', 15, '2025-05-20 15:25:00', 'tool_usage_logs', NULL, 'tool_name=Gmail'),
('UPDATE', 16, '2025-05-20 16:45:00', 'projects', 'status=On Hold', 'status=Ongoing'),
('DELETE', 17, '2025-05-20 17:55:00', 'products', 'product_name=Search AI', NULL),
('INSERT', 18, '2025-05-20 18:10:00', 'employee_projects', NULL, 'role_in_project=Lead'),
('UPDATE', 19, '2025-05-20 19:20:00', 'performance_reviews', 'rating=2', 'rating=4'),
('INSERT', 20, '2025-05-20 20:30:00', 'audit_logs', NULL, 'event_type=UPDATE');
