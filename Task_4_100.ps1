# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -> "abcdefklmopqwxy"

# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
function longest([string]$a, [string]$b) {
    return -join ( ( $a + $b ).ToCharArray() | Sort-Object -Unique)
    # соединяем 2 строки
    # преобразуем в массив символов с сортировкой по единственному вхождению символа
    # объединяем массив символов с помощью -join
}
[string]$a = "xyaabbbccccdefww"
[string]$b = "xxxxyyyyabklmopq"

$c = longest($a, $b)
Write-Host "$a + $b -> $c"

[string]$a = "abcdefghijklmnopqrstuvwxyz"

$d = longest($a, $a)
Write-Host "$a + $a -> $d"
