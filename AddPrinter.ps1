$printserver = "MPCSUHSVR01"
$printers = Get-Printer -ComputerName $printserver

foreach ($printer in $printers)
{
    
    $printer_path = "\\" + $printer.ComputerName + "\" + $printer.Name
    Add-Printer -ConnectionName $printer_path 
    
     
}