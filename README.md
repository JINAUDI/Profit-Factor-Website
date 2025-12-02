# Profit Factor Website

An ASP.NET MVC website built with .NET 8.0.

## Project Structure

```
/
├── src/                    # Main application source code
│   ├── Controllers/        # MVC Controllers
│   ├── Models/             # Data models
│   ├── Views/              # Razor views
│   ├── wwwroot/            # Static files (CSS, JS, images)
│   ├── Properties/         # Launch settings
│   ├── appsettings.json    # Application configuration
│   ├── Program.cs          # Application entry point
│   └── Seox.csproj         # Project file
├── Dockerfile              # Docker configuration for deployment
├── render.yaml             # Render.com deployment configuration
└── README.md               # This file
```

## Local Development

### Prerequisites
- .NET 8.0 SDK

### Run Locally
```bash
cd src
dotnet restore
dotnet run
```

The site will be available at `http://localhost:5144`

## Deployment

This project is configured for deployment on [Render.com](https://render.com).

### Deploy to Render
1. Push your code to GitHub
2. Connect your repository to Render
3. Render will automatically detect the `render.yaml` and deploy

### Manual Docker Build
```bash
docker build -t profit-factor-website .
docker run -p 8080:8080 profit-factor-website
```

## Technology Stack
- ASP.NET Core MVC (.NET 8.0)
- Bootstrap
- jQuery
