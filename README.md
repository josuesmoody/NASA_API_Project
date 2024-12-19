NASA APOD API PowerShell Project

Overview
This project demonstrates how to use PowerShell to interact with the NASA Astronomy Picture of the Day (APOD) API. The script retrieves metadata about the image of the day, downloads the image, and opens it in the system's default image viewer.

Features
Connects to the NASA APOD API using an API key.
Fetches and displays the following metadata:
Title of the image.
Date it was featured.
Description of the image.
URL of the image.
Downloads the image and saves it locally with a sanitized filename.
Opens the image using the system's default image viewer.
Requirements
1. Tools and Environment
PowerShell 5.1 or later (Windows or cross-platform via PowerShell Core).
Active internet connection.
2. API Key
Obtain a free API key by signing up at NASA API Portal.
Usage
Step 1: Clone the Repository
bash
Copiar código
git clone https://github.com/your-username/nasa-apod-powershell.git
cd nasa-apod-powershell
Step 2: Add Your API Key
Edit the NASA_APOD.ps1 file and replace the placeholder in the $APIKey variable with your API key:

powershell
Copiar código
$APIKey = "YOUR_API_KEY"
Step 3: Run the Script
Execute the script in PowerShell:

powershell
Copiar código
.\NASA_APOD.ps1
Expected Output
The script will display the metadata for the APOD image in the console:

mathematica
Copiar código
Astronomy Picture of the Day:
Title: [Image Title]
Date: [Date]
Description: [Image Description]
Image URL: [URL]
The image will be downloaded and saved in the current directory.

The script will open the image using the default image viewer.

File Structure
bash
Copiar código
nasa-apod-powershell/
├── NASA_APOD.ps1   # Main PowerShell script
├── README.md       # Project documentation
PowerShell Commands Used
Invoke-RestMethod: Fetches data from the API in JSON format.
Invoke-WebRequest: Downloads the image from the provided URL.
Write-Output: Displays information in the console.
Start-Process: Opens the downloaded image using the default viewer.
Error Handling
If the API request fails (e.g., invalid API key, no internet), the script terminates gracefully with an error message.
If the image URL is unavailable, the script displays an error but continues running.
License
This project is licensed under the MIT License.

Contributing
Contributions are welcome! If you have suggestions or improvements, please create a pull request or open an issue.

Acknowledgments
NASA for the amazing APOD API.
PowerShell for providing a versatile scripting environment.
Contact
Created by YJosué Elías Santana. For inquiries, feel free to open an issue or contact me directly.
