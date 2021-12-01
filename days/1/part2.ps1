# [int[]]$inputArray = "199", "200", "208", "210", "200", "207", "240", "269", "260", "263"
[int[]]$inputArray = Get-Content -Path 'inputs.txt'
$counter = 0
for ($i = 2; $i -lt $inputArray.length - 1; $i++) {
  $window1 = $inputArray[$i] + $inputArray[$i - 1] + $inputArray[$i - 2]
  $window2 = $inputArray[$i + 1] + $inputArray[$i] + $inputArray[$i - 1]
  $window1.ToString() + " " + $window2.ToString() + " " + ($window2 -gt $window1 ? " Increased" : "")
  if ($window2 -gt $window1) {
    $counter ++
  }
}
"
Counter: " + $counter