
# Getting Started with Advent of Code Hackathon

## 1. Clone the Repo
Start by cloning the repository:

```bash
git clone <repo_url>
cd <repo_name>
```

## 2. Create a Login on Advent of Code (AoC)
If you haven't already, create an account on Advent of Code:
- Go to [Advent of Code 2015](https://adventofcode.com/2015)

## 3. Do Stuff (Solve the Puzzles)
...

### Getting Inputs

You can get your inputs in two ways:

### A) Manually Downloading the Inputs
1. Go to each day’s puzzle page on [Advent of Code 2015](https://adventofcode.com/2015).
2. Scroll to the bottom and click on **"Get your puzzle input"**.
3. Save the file manually as `dayX.txt` (where X is the day number).

### B) Using a Helpful Tool (`advent-of-code-data`)
You can automate the input retrieval process by using a tool called [advent-of-code-data](https://github.com/wimglenn/advent-of-code-data).

To install it, use `pip`:

```bash
pip install advent-of-code-data
```

#### Prerequisites for using the tool:
1. **A login for Advent of Code 2015**: Sign in on [Advent of Code](https://adventofcode.com/2015).
2. **Your session ID cookie**: To retrieve your personalized inputs, you'll need your session cookie.
   - Login on AoC with your account (e.g., GitHub or Google).
   - Open your browser's developer console (right-click → **Inspect** → **Network** tab).
   - Visit a puzzle page (e.g., [day 1](https://adventofcode.com/2015/day/1/input)).
   - Look for the `session=...` cookie in the **Request Headers**.
   - Add this session ID to your environment by setting `AOC_SESSION` or by writing it to `~/.config/aocd/token`.

Once everything is set up, you can use the tool to download your inputs for all days:

```bash
# Download inputs for all 25 days
for day in {1..25}; do
    aocd $day 2015 > "inputs/day${day}.txt"
done
```

## 4. Upload Your Folder to Git
Each group should create a folder in the repo with their group name (e.g., `group_alpha/`) and upload their code and solutions there.

## 5. Submitting Your Solutions
You can submit your answers to Advent of Code for verifiability, but **please make sure to submit your code to your respective folder** in this repository. This is where we’ll look at your work together and admire your solutions later.

- **Important**: This repo will be made private or removed after the event, so make sure your solutions are submitted to your folder.

If you prefer, you can also submit your work to your own Git repository and share it with us.


Join the leaderboard

3434143-9fd3e2cf