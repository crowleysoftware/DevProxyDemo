function Format-Response {
    param (
        $Response
    )

    $ResponseDetails = @{
        StatusCode = $Response.StatusCode
        StatusDescription = $Response.StatusDescription
        Headers = $Response.Headers
        Content = [System.Text.Encoding]::UTF8.GetString($Response.Content)
    }
    return $ResponseDetails | ConvertTo-Json -Depth 10
    
}