# k -> m
# o -> q
# e -> g

$inputString = "g fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj."

$inputString
$outputString = ""
foreach ($symbol in $inputString.ToCharArray()){
    # цикл по каждому символу во входной строке

    if ( ($symbol -ge "a") -and ($symbol -le "z") ){
        # исключаем знаки пробелов, точек, скобок

        $symbolByte = [Byte]$symbol + 2
        # преобразуем символ в байт-код, добавляем 2 по заданию

        if ($symbolByte -gt [Byte]([Char]("z"))){
            # если выходим за пределы алфавита

            $symbolByte -= 26
            # циклически возвращаемся в начало алфавита
        }

        $outputString += [Char]$symbolByte
        # преобразуем байт-код в символ, составляем новую декодированную строку
    }
    else{

        $outputString += $symbol
        # добавляем знаки пробелов, точек, скобок
    }
}
$outputString
# можно ещё добавить условие для работы с заглавными буквами
