
# NASA APOD API PowerShell Project 🚀

## Overview
This project showcases how to use PowerShell to interact with the NASA Astronomy Picture of the Day (APOD) API. 
With just a few commands, the script retrieves metadata about NASA's image of the day, downloads it, and opens it 
in your system's default image viewer. 

### Highlights
- Fetches stunning daily images from NASA's APOD API.
- Displays essential metadata: 
  - Title
  - Date featured
  - Description
  - URL of the image
- Downloads the image with a sanitized filename to ensure safe storage.
- Opens the image directly using your system's default image viewer.

## Prerequisites

### Tools & Environment
- **PowerShell 5.1** or later (compatible with Windows, macOS, or Linux via PowerShell Core).
- An active internet connection.

### API Key
- Sign up for a free API key at the [NASA API Portal](https://api.nasa.gov/).

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/nasa-apod-powershell.git
cd nasa-apod-powershell
```

### 2. Add Your API Key
Edit the `NASA_APOD.ps1` script file. Replace the placeholder in the `$APIKey` variable with your API key:
```powershell
$APIKey = "YOUR_API_KEY"
```

### 3. Run the Script
Run the script in PowerShell:
```powershell
.\NASA_APOD.ps1
```

## Expected Output

The script will display the following metadata in your PowerShell console:
```
Astronomy Picture of the Day:
Title: [Image Title]
Date: [Date]
Description: [Image Description]
Image URL: [URL]
```
- The image will be downloaded and saved in the current directory.
- It will automatically open using your system's default image viewer.

## File Structure

```
nasa-apod-powershell/
├── NASA_APOD.ps1    # Main PowerShell script
├── README.md        # Project documentation
```

## Key PowerShell Commands Used

- `Invoke-RestMethod`: Fetches data from the API in JSON format.
- `Invoke-WebRequest`: Downloads the image from the provided URL.
- `Write-Output`: Displays metadata in the console.
- `Start-Process`: Opens the downloaded image.

## Error Handling

- **API Failures**: Gracefully handles invalid API keys or connection issues.
- **Missing Image URL**: Displays an error if the image URL is unavailable but continues execution.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more details.

## Contributing

Contributions are welcome! 🎉 If you have ideas, suggestions, or improvements, please:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

## Acknowledgments

- **NASA** for the breathtaking APOD API. 🌌
- **PowerShell** for its robust scripting capabilities.

## Contact

Created by **Josué Elías Santana**. 
Feel free to [contact me](https://www.linkedin.com/in/josue-santana/) for any inquiries.

---
✨ Enjoy exploring the universe, one image at a time! ✨
