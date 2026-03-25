# MLB Best Hitter by Ballpark

---

**Project Overview**

This project analyzes MLB at-bat data to identify the best single-game hitting performance at each ballpark using a custom scoring metric.

The goal is to transform raw at-bat data into meaningful insights by aggregating player performance and ranking outcomes across stadiums.

---

**Objective**

Determine which batter had the best single-game performance at each MLB ballpark.

---

**Data**

- Source: Sample of 2018 MLB Statcast-style data  
- Tables used:
  - atbats
  - players
  - games

Each row in the dataset represents a single at-bat.

---

**Methodology**

1. Data Extraction

- Queried a PostgreSQL database using SQL  
- Joined:
  - atbats to players (batter information)
  - atbats to games (ballpark information)

2. Data Transformation

- Loaded the data into pandas  
- Aggregated at-bat level data into a batter-game level dataset  

Each row represents a player’s full performance in a single game at a specific ballpark.

3. Feature Engineering

Created a custom performance metric:

performance_points = hits + (3 × home runs) - strikeouts

Rationale:
- Rewards offensive production  
- Gives additional weight to power hitting (home runs)  
- Penalizes unproductive outcomes (strikeouts)  

4. Analysis

- Ranked batter-game performances by performance_points  
- Grouped by venue_name (ballpark)  
- Selected the top performance per ballpark

---

**Results**

The final output includes:

- Ballpark name  
- Player name  
- Hits, home runs, and strikeouts  
- Total at-bats  
- Performance score  

This identifies the top offensive performance at each stadium in the dataset.

**Key Insights**

- Power hitters dominate the top performances due to the scoring model  
- Multi-home run games consistently rank among the highest performances  
- Variation across ballparks is present, though influenced by the limited sample size  

**Limitations**

- Dataset includes only a subset of games from the 2018 season  
- Results are illustrative rather than comprehensive  
- Ballpark-specific trends are not fully captured due to limited data

---

**Tech Stack**

- Python (pandas)  
- SQL (PostgreSQL)  
- SQLAlchemy  
- Jupyter Notebook

---

**How to Run**

1. Clone the repository:

git clone <your-repo-url>
cd mlb_best_hitter_by_ballpark

2. Create a virtual environment:

python3 -m venv .venv
source .venv/bin/activate

3. Install dependencies:

python -m pip install -r requirements.txt

4. Set up environment variables:

Create a .env file with the following:

DB_USER=your_username
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=your_database

5. Launch the notebook

---

**Key Learnings**

- Using groupby and aggregation to transform data grain  
- Ranking within groups using sorting and selection  
- Feature engineering to create meaningful performance metrics  
- Managing database connections with SQLAlchemy and environment variables  

**Future Improvements**

- Expand to a full-season dataset  
- Incorporate advanced metrics (e.g., total bases, OPS)  
- Add visualizations of performance by ballpark  
- Compare player performance across different environments

---

**Author**

Spencer Willard
