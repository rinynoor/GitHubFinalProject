
---

### 5. `simple-interest.sh` – 2 pts

```bash
#!/bin/bash
# simple-interest.sh: menghitung simple interest

set -euo pipefail

echo "=== Simple Interest Calculator ==="
read -p "Principal (Rp): " p
read -p "Rate of Interest (% per year): " r
read -p "Time (years): " t

# validasi input numerik
if ! [[ "$p" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$r" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$t" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Error: Input harus angka."
  exit 1
fi

# hitung simple interest
si=$(echo "scale=2; $p * $r * $t / 100" | bc)

echo "----"
echo "Principal: Rp $p"
echo "Rate: $r%"
echo "Time: $t years"
echo "=> Simple Interest: Rp $si"
