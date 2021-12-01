#$letterArray = "199", "200", "208", "210", "200", "207", "240", "269", "260", "263"
[int[]]$inputArray = Get-Content -Path 'inputs.txt'
$counter = 0
for ($i = 1; $i -lt $inputArray.length; $i++) {
  $inputArray[$i].ToString() + " " + $inputArray[$i - 1].ToString() + ($inputArray[$i] -gt $inputArray[$i - 1] ? " Increased" : "")
  if ($inputArray[$i] -gt $inputArray[$i - 1]) {
    $counter ++
  }
}
"
Counter: " + $counter