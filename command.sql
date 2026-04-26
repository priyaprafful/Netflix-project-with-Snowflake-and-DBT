#!/bin/bash

# Exit if error
set -e

echo "Creating project folder..."
mkdir -p DBT-project
cd DBT-project

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

pip install dbt-snowflake==1.9.0

echo "Installing dbt..."
pip install dbt-core

echo "Freezing dependencies..."
pip freeze > requirements.txt

echo "Setup complete!"

--create dbt profile
--mac
mkdir ~/.dbt

--create profiles.yml file in the DBT-projects /Users/priyankamaheswari/.dbt
--Need to putl all the information same as we put in our snowflake account

-- only want to run one model
-- dbt run --model dim_users

--dbt run --select fct_ratings