#!/bin/bash

# MAF Workshop Setup Script for GitHub Codespaces
set -e

echo "🚀 Setting up MAF Workshop environment..."

# Update system packages
echo "📦 Updating system packages..."
sudo apt-get update

# Install additional system dependencies if needed
echo "🔧 Installing system dependencies..."
sudo apt-get install -y curl wget git

# Verify uv installation
echo "🔍 Verifying uv installation..."
if ! command -v uv &> /dev/null; then
    echo "❌ uv not found, installing..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.cargo/bin:$PATH"
else
    echo "✅ uv is already installed"
fi

# Show uv version
uv --version

# Check if pyproject.toml exists and install dependencies
if [ -f "pyproject.toml" ]; then
    echo "📋 Found pyproject.toml, installing dependencies..."
    uv sync
else
    echo "⚠️  No pyproject.toml found, creating a basic Python environment..."
    uv init --python 3.12
    
    # Install common data science packages
    echo "📚 Installing common packages for AI/ML workshops..."
    uv add jupyter notebook ipykernel pandas numpy matplotlib seaborn scikit-learn
    uv add openai anthropic azure-ai-inference
fi

# Setup Jupyter kernel
echo "🪐 Setting up Jupyter kernel..."
uv run python -m ipykernel install --user --name maf-workshop --display-name "MAF Workshop (Python 3.12)"

# Create .env template if it doesn't exist
if [ ! -f ".env" ]; then
    echo "📝 Creating .env template..."
    cat > .env << 'EOF'
# API Keys (replace with your actual keys)
OPENAI_API_KEY=your_openai_api_key_here
ANTHROPIC_API_KEY=your_anthropic_api_key_here
AZURE_OPENAI_API_KEY=your_azure_openai_api_key_here
AZURE_OPENAI_ENDPOINT=your_azure_openai_endpoint_here

# Other environment variables
PYTHONPATH=/workspaces/maf-workshop
EOF
fi

# Make sure git is configured
echo "🔧 Configuring Git..."
git config --global --add safe.directory /workspaces/maf-workshop

echo "✅ Setup complete! Your environment is ready for the MAF Workshop."
echo ""
echo "📝 Next steps:"
echo "1. Update the .env file with your actual API keys"
echo "2. Open any Jupyter notebook and select 'MAF Workshop (Python 3.12)' kernel"
echo "3. Start exploring the workshop materials!"
echo ""