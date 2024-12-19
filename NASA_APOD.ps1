# Initial Settings
$APIKey = "YOUR_API_KEY" # Get yours on https://api.nasa.gov/
$BaseURL = "https://api.nasa.gov/planetary/apod"

$CompleteURL = "$BaseURL`?api_key=$APIKey"
Write-Output "Complete URL: $CompleteURL"

# Connect to NASA's API
try {
    $Response = Invoke-RestMethod -Uri $CompleteURL -Method Get
    Write-Output "Data fetched successfully!"
} catch {
    Write-Error "Failed to fetch data: $_"
    exit
}

# Show the data
$Title = $Response.title
$Description = $Response.explanation
$Date = $Response.date
$ImageURL = $Response.url  

Write-Output "Astronomy Picture of the Day:"
Write-Output "Title: $Title"
Write-Output "Date: $Date"
Write-Output "Description: $Description"
Write-Output "Image URL: $ImageURL"

# Image download
if ($ImageURL) {
    Write-Output "Downloading the image..."
    $ImageFileName = "$Date - $Title.jpg" -replace "[:*?<>|]", "" 
    Invoke-WebRequest -Uri $ImageURL -OutFile $ImageFileName
    Write-Output "Image downloaded as $ImageFileName"
} else {
    Write-Error "Image URL not found in the API response."
}

Start-Process $ImageFileName
