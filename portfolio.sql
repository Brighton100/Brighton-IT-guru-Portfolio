-- Create the database
CREATE DATABASE portfolio_db;
USE portfolio_db;

-- Table for users (optional, useful for multi-user management)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL
);

-- Table for projects
CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    link VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert project data
INSERT INTO projects (title, description, link) VALUES 
('KCAA eServices Portal', 'An online platform to streamline aviation-related services, including license applications, approvals, and renewals.', 'https://eservices.kcaa.or.ke/'),
('Python Calculator Assignment', 'A simple calculator developed as my first Python assignment at PLP Academy.', 'https://github.com/Brighton100/python-week-1-assignment.git'),
('Coming Soon', 'A commercial website that will change the life of the entire world!', '#');

-- Table for skills
CREATE TABLE skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(100) NOT NULL
);

-- Insert skills
INSERT INTO skills (skill_name) VALUES 
('HTML, CSS, JavaScript'),
('Database Management'),
('Networking & Cybersecurity'),
('Software Development'),
('Project Management');

-- Table for contact details
CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contact_type VARCHAR(50) NOT NULL,
    value VARCHAR(255) NOT NULL
);

-- Insert contact details
INSERT INTO contacts (contact_type, value) VALUES 
('Phone', '0706238175'),
('Email', 'ochiengbrighton109@gmail.com'),
('Facebook', 'https://www.facebook.com/'),
('Twitter', 'https://www.twitter.com/'),
('LinkedIn', 'https://www.linkedin.com/'),
('GitHub', 'https://www.github.com/'),
('TikTok', 'https://www.tiktok.com/');
