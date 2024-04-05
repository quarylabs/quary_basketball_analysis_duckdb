## NBA Analysis Project (DuckDB + Quary w/ Interactive Python Notebook)

This project analyzes NBA data using DuckDB and Quary to transform raw data from .csv files into a structured database ready for analysis. The project also includes an [interactive Python Notebook (analysis.ipynb)](./analysis.ipynb) that provides visual insights into team and player performance metrics.

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

1. Clone the [repository](https://github.com/quarylabs/quary_basketball_analysis_duckdb)

```bash
git clone https://github.com/quarylabs/quary_basketball_analysis_duckdb.git
```

2. Open the project in Visual Studio Code and install [Quary from the extension marketplace](https://marketplace.visualstudio.com/items?itemName=Quary.quary-extension)

3. Install the Quary CLI

```bash
brew install quarylabs/quary/quary
```

(Optional) 4. Explore the SQL file documentation (`CMD/CTRL+D`)

(Optional) 5. Build the database (deploy the models to DuckDB) using the `Quary: RUN` VSCode command or `quary build` in the CLI

(Optional) 6. Run the tests against the DuckDB database using `Quary: Test` VSCode command or `quary test` in the CLI.

Feel free to fork this project and make your own analysis!