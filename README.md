## NBA Analysis Project (DuckDB + Quary w/ Interactive Python Notebook)

This project analyzes NBA data using DuckDB and Quary to transform raw data from .csv files into a structured database ready for analysis. The project also includes an interactive Python Notebook (NBA_Analysis.ipynb) that provides visual insights into team and player performance metrics.

### 📂 What's in this repo?

This repo contains .csv data, including raw data on NBA players, teams, salaries, and draft information. The raw data is transformed using DuckDB and DBT into a structured database with the following views:

- `stg_players`: Player information and statistics
- `team_performance`: Team performance metrics
- `player_performance`: Player performance metrics
- `player_salary_info`: Player salary information
- `team_salary_info`: Team salary information
- `player_draft_info`: Player draft information
- `player_combine_stats`: Player measurements from the draft combine

### 🚀 Opening this project

To explore this project, follow these steps:

Clone the repository to your local machine
Open the project in VS Code
Install the recommended extensions if prompted by VS Code
To interact with the data models, navigate to any .sql file and use the following shortcuts:

`CMD+D (ctrl on Windows)`: Open the model documentation

`CMD+Enter (ctrl on Windows)`: View the transformed data