-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS coal_power_plants_db;

-- Use the database
USE coal_power_plants_db;

-- Create a table for coal-based power plants
CREATE TABLE IF NOT EXISTS coal_power_plants (
    plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(255),
    location VARCHAR(255),
    capacity_mw INT,
    commissioned_year INT,
    owner VARCHAR(255),
    operator VARCHAR(255),
    coal_source VARCHAR(255),
    technology VARCHAR(255),
    status VARCHAR(50)
);

-- Insert data for 20 different coal-based power plants
INSERT INTO coal_power_plants (plant_name, location, capacity_mw, commissioned_year, owner, operator, coal_source, technology, status)
VALUES 
('Mundra Ultra Mega', 'Mundra, Gujarat', 4620, 2007, 'Adani Power Ltd.', 'Adani Power Ltd.', 'Domestic', 'Supercritical', 'Operational'),
('Sasan Ultra Mega', 'Singrauli, Madhya Pradesh', 3960, 2015, 'Reliance Power Ltd.', 'Reliance Power Ltd.', 'Domestic', 'Ultra-supercritical', 'Operational'),
('Talcher Super Thermal', 'Angul, Odisha', 3000, 1995, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Rihand Super Thermal', 'Sonebhadra, Uttar Pradesh', 3000, 1989, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Vindhyachal Super Thermal', 'Singrauli, Madhya Pradesh', 4760, 1987, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Talcher Thermal', 'Talcher, Odisha', 460, 1968, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Subcritical', 'Operational'),
('Sipat Super Thermal', 'Bilaspur, Chhattisgarh', 2980, 2008, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Korba Super Thermal', 'Korba, Chhattisgarh', 2600, 1983, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Mundra TPS', 'Mundra, Gujarat', 3300, 2009, 'Tata Power', 'Tata Power', 'Domestic', 'Supercritical', 'Operational'),
('Kudgi Super Thermal', 'Bijapur, Karnataka', 2400, 2017, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Barh Super Thermal', 'Patna, Bihar', 3300, 2014, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Vallur Thermal', 'Chennai, Tamil Nadu', 1500, 2014, 'NTPC Limited', 'NTPC Limited', 'Domestic', 'Supercritical', 'Operational'),
('Rajiv Gandhi Thermal', 'Haryana, Haryana', 1400, 2010, 'Haryana Power Generation Corporation Ltd.', 'Haryana Power Generation Corporation Ltd.', 'Domestic', 'Supercritical', 'Operational'),
('Meja Thermal Power Project', 'Meja, Uttar Pradesh', 1320, 2016, 'Meja Urja Nigam Private Limited', 'Meja Urja Nigam Private Limited', 'Domestic', 'Supercritical', 'Operational'),
('Neyveli Thermal Power Plant', 'Neyveli, Tamil Nadu', 6000, 1962, 'NLC India Limited', 'NLC India Limited', 'Domestic', 'Subcritical', 'Operational'),
('Wanakbori Thermal Power', 'Kheda, Gujarat', 1470, 1982, 'Gujarat State Electricity Corporation', 'Gujarat State Electricity Corporation', 'Domestic', 'Supercritical', 'Operational'),
('Rajpura Thermal Power Plant', 'Patiala, Punjab', 1400, 2014, 'Nabha Power Limited', 'Nabha Power Limited', 'Domestic', 'Supercritical', 'Operational'),
('Rayalaseema Thermal Power Plant', 'Cuddapah, Andhra Pradesh', 1050, 2008, 'Andhra Pradesh Power Generation Corporation Limited', 'Andhra Pradesh Power Generation Corporation Limited', 'Domestic', 'Supercritical', 'Operational'),
('Nabinagar Thermal Power Project', 'Aurangabad, Bihar', 1980, 2019, 'Bhartiya Rail Bijlee Company Limited', 'Bhartiya Rail Bijlee Company Limited', 'Domestic', 'Supercritical', 'Operational'),
('Durgapur Thermal Power Plant', 'Durgapur, West Bengal', 1760, 1960, 'Durgapur Projects Limited', 'Durgapur Projects Limited', 'Domestic', 'Supercritical', 'Operational');

Select * from plant_locations;

-- Create a table for plant locations
CREATE TABLE IF NOT EXISTS plant_locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(255),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    climate_zone VARCHAR(50)
);

-- Insert data for plant locations
INSERT INTO plant_locations (plant_name, latitude, longitude, climate_zone)
VALUES 
('Mundra Ultra Mega', 22.8366, 69.7211, 'Hot desert'),
('Sasan Ultra Mega', 24.2017, 82.6757, 'Hot semi-arid'),
('Talcher Super Thermal', 20.8393, 85.0985, 'Tropical monsoon'),
('Rihand Super Thermal', 24.1988, 83.0150, 'Tropical monsoon'),
('Vindhyachal Super Thermal', 24.1443, 82.6535, 'Tropical monsoon'),
('Talcher Thermal', 20.9467, 85.2322, 'Tropical monsoon'),
('Sipat Super Thermal', 22.0513, 82.2428, 'Tropical wet and dry'),
('Korba Super Thermal', 22.3587, 82.6734, 'Tropical wet and dry'),
('Mundra TPS', 22.8370, 69.6983, 'Hot desert'),
('Kudgi Super Thermal', 16.9604, 75.7506, 'Tropical savanna'),
('Barh Super Thermal', 25.4805, 85.6815, 'Humid subtropical'),
('Vallur Thermal', 13.1798, 80.2817, 'Tropical wet and dry'),
('Rajiv Gandhi Thermal', 29.1715, 76.3051, 'Tropical wet and dry'),
('Meja Thermal Power Project', 25.4025, 81.3805, 'Humid subtropical'),
('Neyveli Thermal Power Plant', 11.6388, 79.4741, 'Tropical wet and dry'),
('Wanakbori Thermal Power', 22.8400, 73.3422, 'Tropical wet and dry'),
('Rajpura Thermal Power Plant', 30.4825, 76.5724, 'Humid subtropical'),
('Rayalaseema Thermal Power Plant', 14.4283, 78.4023, 'Tropical wet and dry'),
('Nabinagar Thermal Power Project', 24.7497, 84.4232, 'Humid subtropical'),
('Durgapur Thermal Power Plant', 23.5604, 87.2814, 'Tropical wet and dry');

-- Create a table for emissions
CREATE TABLE IF NOT EXISTS emissions_1 (
    emission_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(255),
    date DATE,
    co2_emissions FLOAT,
    so2_emissions FLOAT,
    nox_emissions FLOAT,
    particulate_matter FLOAT
);

-- Insert data for emissions on 1 March 2024
INSERT INTO emissions_1 (plant_name, date, co2_emissions, so2_emissions, nox_emissions, particulate_matter)
VALUES 
('Mundra Ultra Mega', '2024-03-01', 980, 490, 190, 145),
('Sasan Ultra Mega', '2024-03-01', 930, 470, 180, 140),
('Talcher Super Thermal', '2024-03-01', 960, 460, 210, 160),
('Rihand Super Thermal', '2024-03-01', 1000, 510, 220, 170),
('Vindhyachal Super Thermal', '2024-03-01', 950, 480, 190, 145),
('Talcher Thermal', '2024-03-01', 1020, 520, 230, 180),
('Sipat Super Thermal', '2024-03-01', 890, 450, 200, 155),
('Korba Super Thermal', '2024-03-01', 910, 460, 190, 145),
('Mundra TPS', '2024-03-01', 860, 430, 200, 160),
('Kudgi Super Thermal', '2024-03-01', 870, 440, 190, 140),
('Barh Super Thermal', '2024-03-01', 900, 460, 200, 155),
('Vallur Thermal', '2024-03-01', 920, 470, 210, 165),
('Rajiv Gandhi Thermal', '2024-03-01', 910, 460, 210, 160),
('Meja Thermal Power Project', '2024-03-01', 950, 480, 220, 170),
('Neyveli Thermal Power Plant', '2024-03-01', 980, 500, 240, 185),
('Wanakbori Thermal Power', '2024-03-01', 910, 460, 190, 145),
('Rajpura Thermal Power Plant', '2024-03-01', 920, 470, 200, 150),
('Rayalaseema Thermal Power Plant', '2024-03-01', 940, 490, 210, 160),
('Nabinagar Thermal Power Project', '2024-03-01', 970, 500, 230, 175),
('Durgapur Thermal Power Plant', '2024-03-01', 930, 470, 210, 160);

-- Create a table for emissions
CREATE TABLE IF NOT EXISTS emissions_2 (
    emission_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(255),
    date DATE,
    co2_emissions FLOAT,
    so2_emissions FLOAT,
    nox_emissions FLOAT,
    particulate_matter FLOAT
);


-- Insert data for emissions on 1 April 2024
INSERT INTO emissions_2 (plant_name, date, co2_emissions, so2_emissions, nox_emissions, particulate_matter)
VALUES 
('Mundra Ultra Mega', '2024-04-01', 970, 480, 185, 140),
('Sasan Ultra Mega', '2024-04-01', 920, 460, 175, 135),
('Talcher Super Thermal', '2024-04-01', 950, 450, 205, 155),
('Rihand Super Thermal', '2024-04-01', 990, 500, 215, 165),
('Vindhyachal Super Thermal', '2024-04-01', 940, 470, 185, 140),
('Talcher Thermal', '2024-04-01', 1010, 510, 225, 175),
('Sipat Super Thermal', '2024-04-01', 880, 440, 195, 150),
('Korba Super Thermal', '2024-04-01', 900, 450, 185, 140),
('Mundra TPS', '2024-04-01', 850, 420, 195, 155),
('Kudgi Super Thermal', '2024-04-01', 860, 430, 185, 135),
('Barh Super Thermal', '2024-04-01', 890, 450, 195, 150),
('Vallur Thermal', '2024-04-01', 910, 460, 205, 160),
('Rajiv Gandhi Thermal', '2024-04-01', 900, 450, 205, 155),
('Meja Thermal Power Project', '2024-04-01', 940, 470, 215, 165),
('Neyveli Thermal Power Plant', '2024-04-01', 970, 490, 235, 180),
('Wanakbori Thermal Power', '2024-04-01', 900, 450, 195, 145),
('Rajpura Thermal Power Plant', '2024-04-01', 910, 460, 195, 145),
('Rayalaseema Thermal Power Plant', '2024-04-01', 930, 480, 205, 155),
('Nabinagar Thermal Power Project', '2024-04-01', 960, 490, 225, 170),
('Durgapur Thermal Power Plant', '2024-04-01', 920, 460, 205, 155);


-- Create a table for combined emissions
CREATE TABLE IF NOT EXISTS combined_emissions (
    emission_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(255),
    date DATE,
    co2_emissions FLOAT,
    so2_emissions FLOAT,
    nox_emissions FLOAT,
    particulate_matter FLOAT
);

-- Insert data for emissions from March
INSERT INTO combined_emissions (plant_name, date, co2_emissions, so2_emissions, nox_emissions, particulate_matter)
SELECT 
    plant_name,
    date,
    co2_emissions,
    so2_emissions,
    nox_emissions,
    particulate_matter
FROM emissions_1
WHERE date = '2024-03-01';

-- Insert data for emissions from April
INSERT INTO combined_emissions (plant_name, date, co2_emissions, so2_emissions, nox_emissions, particulate_matter)
SELECT 
    plant_name,
    date,
    co2_emissions,
    so2_emissions,
    nox_emissions,
    particulate_matter
FROM emissions_2
WHERE date = '2024-04-01';


-- Total CO2 emissions for each plant in March and April 2024:
SELECT plant_name, SUM(co2_emissions) AS total_co2_emissions
FROM combined_emissions
GROUP BY plant_name;


-- Average SO2 emissions for each plant in March and April 2024:
SELECT plant_name, AVG(so2_emissions) AS avg_so2_emissions
FROM combined_emissions
GROUP BY plant_name;


-- Plants emitting the highest CO2 emissions in March 2024:
SELECT plant_name, co2_emissions
FROM combined_emissions
WHERE date = '2024-03-01'
ORDER BY co2_emissions DESC
LIMIT 5;


-- Total emissions for each emission type (CO2, SO2, NOx, particulate matter) in April 2024: 
SELECT 
    SUM(co2_emissions) AS total_co2_emissions,
    SUM(so2_emissions) AS total_so2_emissions,
    SUM(nox_emissions) AS total_nox_emissions,
    SUM(particulate_matter) AS total_particulate_matter
FROM emissions_2
WHERE date = '2024-04-01';


-- Number of plants in each climate zone:
SELECT climate_zone, COUNT(*) AS num_plants
FROM plant_locations
GROUP BY climate_zone;


-- Plants commissioned after 2010 with capacity greater than 2000 MW:
SELECT plant_name, capacity_mw, commissioned_year
FROM coal_power_plants
WHERE commissioned_year > 2010 AND capacity_mw > 2000;


-- Plants owned by NTPC Limited:
SELECT plant_name, owner
FROM coal_power_plants
WHERE owner = 'NTPC Limited';


-- Average CO2 emissions for each technology type:
SELECT technology, AVG(co2_emissions) AS avg_co2_emissions
FROM combined_emissions
GROUP BY technology;


-- Plants in tropical wet and dry climate zone with capacity greater than 3000 MW:
SELECT c.plant_name, c.capacity_mw, p.climate_zone
FROM coal_power_plants c
JOIN plant_locations p ON c.plant_name = p.plant_name
WHERE p.climate_zone = 'Tropical wet and dry' AND c.capacity_mw > 3000;


-- Percentage change in CO2 emissions from March to April 2024 for each plant:
WITH March_Emissions AS (
    SELECT 
        plant_name,
        co2_emissions AS march_co2,
        so2_emissions AS march_so2,
        nox_emissions AS march_nox,
        particulate_matter AS march_pm
    FROM emissions_1
    WHERE date = '2024-03-01'
),
April_Emissions AS (
    SELECT 
        plant_name,
        co2_emissions AS april_co2,
        so2_emissions AS april_so2,
        nox_emissions AS april_nox,
        particulate_matter AS april_pm
    FROM emissions_2
    WHERE date = '2024-04-01'
)
SELECT 
    March_Emissions.plant_name,
    March_Emissions.march_co2,
    April_Emissions.april_co2,
    (April_Emissions.april_co2 - March_Emissions.march_co2) / March_Emissions.march_co2 * 100 AS co2_change_percentage,
    March_Emissions.march_so2,
    April_Emissions.april_so2,
    (April_Emissions.april_so2 - March_Emissions.march_so2) / March_Emissions.march_so2 * 100 AS so2_change_percentage,
    March_Emissions.march_nox,
    April_Emissions.april_nox,
    (April_Emissions.april_nox - March_Emissions.march_nox) / March_Emissions.march_nox * 100 AS nox_change_percentage,
    March_Emissions.march_pm,
    April_Emissions.april_pm,
    (April_Emissions.april_pm - March_Emissions.march_pm) / March_Emissions.march_pm * 100 AS pm_change_percentage
FROM March_Emissions
JOIN April_Emissions ON March_Emissions.plant_name = April_Emissions.plant_name;



-- Plants located in a hot desert climate zone:
SELECT plant_name, climate_zone
FROM plant_locations
WHERE climate_zone = 'Hot desert';


-- Calculate the total emissions (CO2, SO2, NOx, particulate matter) for each plant in March and April 2024, and rank them in descending order of total emissions:
SELECT 
    plant_name, 
    SUM(co2_emissions) AS total_co2_emissions,
    SUM(so2_emissions) AS total_so2_emissions,
    SUM(nox_emissions) AS total_nox_emissions,
    SUM(particulate_matter) AS total_particulate_matter,
    SUM(co2_emissions + so2_emissions + nox_emissions + particulate_matter) AS total_emissions
FROM combined_emissions
GROUP BY plant_name
ORDER BY total_emissions DESC;


-- Identify the plants with the highest percentage increase in emissions from March to April 2024, considering all emission types:
WITH march_emissions AS (
    SELECT 
        plant_name,
        SUM(co2_emissions + so2_emissions + nox_emissions + particulate_matter) AS march_total_emissions
    FROM combined_emissions
    WHERE date = '2024-03-01'
    GROUP BY plant_name
),
april_emissions AS (
    SELECT 
        plant_name,
        SUM(co2_emissions + so2_emissions + nox_emissions + particulate_matter) AS april_total_emissions
    FROM combined_emissions
    WHERE date = '2024-04-01'
    GROUP BY plant_name
)
SELECT 
    m.plant_name,
    ((a.april_total_emissions - m.march_total_emissions) / m.march_total_emissions) * 100 AS percentage_increase
FROM march_emissions m
JOIN april_emissions a ON m.plant_name = a.plant_name
ORDER BY percentage_increase DESC;


-- Find the average emissions for each emission type (CO2, SO2, NOx, particulate matter) for plants in each climate zone:
SELECT 
    p.climate_zone,
    AVG(e.co2_emissions) AS avg_co2_emissions,
    AVG(e.so2_emissions) AS avg_so2_emissions,
    AVG(e.nox_emissions) AS avg_nox_emissions,
    AVG(e.particulate_matter) AS avg_particulate_matter
FROM plant_locations p
JOIN combined_emissions e ON p.plant_name = e.plant_name
GROUP BY p.climate_zone;


-- Determine the plants with the highest emissions for each emission type (CO2, SO2, NOx, particulate matter) in March and April 2024:
SELECT 
    plant_name,
    MAX(co2_emissions) AS max_co2_emissions,
    MAX(so2_emissions) AS max_so2_emissions,
    MAX(nox_emissions) AS max_nox_emissions,
    MAX(particulate_matter) AS max_particulate_matter
FROM combined_emissions
GROUP BY plant_name;


-- Calculate the average emissions for each month (March and April) separately, considering all emission types:
SELECT 
    MONTH(date) AS month,
    AVG(co2_emissions + so2_emissions + nox_emissions + particulate_matter) AS avg_total_emissions
FROM combined_emissions
GROUP BY month;


-- Find the top 3 plants with the highest CO2 emissions in March and April 2024:
SELECT 
    plant_name,
    co2_emissions,
    date
FROM combined_emissions
ORDER BY co2_emissions DESC
LIMIT 3;


-- Identify the plants with the highest emissions in each climate zone.
WITH max_emissions_per_zone AS (
    SELECT 
        p.climate_zone,
        MAX(co2_emissions + so2_emissions + nox_emissions + particulate_matter) AS max_total_emissions
    FROM combined_emissions c
    JOIN plant_locations p ON c.plant_name = p.plant_name
    GROUP BY p.climate_zone
)
SELECT 
    p.plant_name,
    p.climate_zone,
    c.co2_emissions + c.so2_emissions + c.nox_emissions + c.particulate_matter AS total_emissions
FROM combined_emissions c
JOIN plant_locations p ON c.plant_name = p.plant_name
JOIN max_emissions_per_zone m ON p.climate_zone = m.climate_zone AND (c.co2_emissions + c.so2_emissions + c.nox_emissions + c.particulate_matter) = m.max_total_emissions;




