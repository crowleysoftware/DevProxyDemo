function Format-Response {
    param (
        $Response
    )

    $ResponseDetails = @{
        StatusCode = $Response.StatusCode
        StatusDescription = $Response.StatusDescription
        Headers = $Response.Headers
        Content = $Response.Content | ConvertTo-Json
    }
    return $ResponseDetails | ConvertTo-Json -Depth 10
    
}