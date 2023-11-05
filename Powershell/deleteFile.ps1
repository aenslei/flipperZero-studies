$targets = @('C:\GoodUSBTest', 'C:\CopyTest')

foreach ($target in $targets) {
    Remove-Item -path $target -recurse
}
