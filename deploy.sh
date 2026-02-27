#!/bin/bash
# Deploy Union Glen Landing Page

echo "🦞 Union Glen Landing Page Deployment"
echo "======================================"

# Check if running in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Are you in the landing-page directory?"
    exit 1
fi

# Create deployment package
echo "📦 Creating deployment package..."
zip -r union-glen-landing-page.zip index.html *.jpg README.md

echo ""
echo "✅ Deployment package created: union-glen-landing-page.zip"
echo ""
echo "Next steps:"
echo "1. Upload all .jpg files and index.html to your web server"
echo "2. Or upload the zip file and extract on the server"
echo ""
echo "Files to deploy:"
ls -lh *.jpg index.html
