# Converting from object = {“a”:{“b”:{“c”:”d”}}} to powershell object format


$object = [PSCustomObject]@{“a”=[PSCustomObject]@{“b”=[PSCustomObject]@{“c”=”d”}}}


# Define fuction that will itreat each object based on the key provided

# Key value format a/b/c

$kvalue ='a/b/c'


#function Get-object( [PSCustomObject]$obj,[string]$keyValue)

function Get-Cust-object()
{

      Param
    (
            
        [Parameter(Mandatory = $true)] [PSCustomObject] $obj,
        [Parameter(Mandatory = $true)] [string] $Key

    )
    try
    {
            $KeyArray = $Key.Split("/")

            Foreach ($k in $KeyArray)
            {
                $obj =  $obj.$k

            }

            if ($obj -ne $null)
            {
            
            Write-Output "Value of the object is " $obj
            }
            else

            {
                Write-Output ("Please check your input key format or Enter Valid Keys")
            }
}

    Catch{

            Write-Output("Error......  Please check the input key")

         }

}

# Calling Get obj fuction

Get-Cust-object $object $kvalue
