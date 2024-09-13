name: Generate Data

on:
  schedule:
    # Execute every 12 hours
    - cron: '0 */12 * * *'
  workflow_dispatch:

jobs:
  build:
    name: Jobs to update data
    runs-on: ubuntu-latest

    steps:
      # Snake Animation
      - uses: platane/snk@master
        id: snake-gif
        with:
          github_user_name: poncianovictoria
          svg_out_path: dist/github-contribution-grid-snake.svg

      - uses: crazy-max/ghaction-github-pages@v2.1.3
        with:
          target_branch: output
          build_dir: dist
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}