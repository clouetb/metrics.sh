#!/bin/sh

collect () {
  # More convenient way to get total load is by making difference between 100% and idle
  report $(top -b -n 1 | head -n 2|tail -n 1 | awk '{ sum+=$8 } END { printf "%.1f\n", 100 - sum }')
}

docs () {
  echo "Openwrt specific routine for extracting CPU load percentage."
}
