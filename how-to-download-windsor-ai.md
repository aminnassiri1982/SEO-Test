# How to Download Windsor.ai: Complete Setup Guide

Windsor.ai is a no-code data integration and marketing attribution platform trusted by over 300,000 data professionals worldwide. It connects 325+ marketing, sales, and analytics sources to your preferred destinations such as data warehouses, BI tools, spreadsheets, and AI chats.

This guide walks you through every way to download and set up Windsor.ai.

## Quick Overview: Is Windsor.ai a Download?

Windsor.ai is primarily a **cloud-based platform** — you access it through your web browser at [windsor.ai](https://windsor.ai/). There is no traditional desktop installer. However, there are several ways to "download" or install Windsor.ai depending on your use case:

| Method | Best For | Install Time |
|--------|----------|-------------|
| Web app (browser) | General use, dashboard access | Instant |
| Google Sheets add-on | Spreadsheet-based reporting | 2 minutes |
| Python package (`pywindsorai`) | Developers and data scientists | 1 minute |
| R package (`windsoraiR`) | R-based analytics | 1 minute |
| Desktop app (via WebCatalog) | Dedicated desktop experience | 5 minutes |
| MCP integration | AI chat tools (Claude, ChatGPT) | 5 minutes |

## Method 1: Sign Up for Windsor.ai (Web App)

The fastest way to get started is through the browser.

### Step 1: Create a Free Account

1. Go to [onboard.windsor.ai](https://onboard.windsor.ai/).
2. Click **Start Free Trial** — you get 30 days free.
3. Enter your email address and create a password, or sign up with your Google account.

### Step 2: Connect Your First Data Source

1. Once logged in, you will see the Windsor.ai dashboard.
2. Click **Add Data Source** and choose from 325+ supported connectors (Google Ads, Facebook Ads, HubSpot, Shopify, GA4, and more).
3. Authorize the connection by signing into the relevant platform.
4. Windsor.ai will begin syncing your data automatically.

### Step 3: Choose a Destination

1. Select where you want your data delivered — Google Sheets, BigQuery, Looker Studio, Power BI, Snowflake, or another supported destination.
2. Follow the on-screen instructions to complete the connection.
3. Your data pipeline is now live and will update automatically.

## Method 2: Install the Google Sheets Add-on

This is the most popular option for marketers who want data directly in their spreadsheets.

### Step-by-Step Installation

1. Open **Google Sheets** in your browser.
2. Click the **Extensions** tab in the top menu.
3. Select **Add-ons** and then click **Get add-ons**.
4. In the Google Workspace Marketplace search bar, type **Windsor.ai**.
5. Click the Windsor.ai add-on and press **Install**.
6. Choose the Google account associated with your Windsor.ai account.
7. Grant the required permissions when prompted.

### Connect Your API Key

1. After installation, go back to your Windsor.ai dashboard.
2. Navigate to the **Google Sheets destination** settings.
3. Copy the **API key** provided in the instructions.
4. Return to Google Sheets, click **Extensions** > **Windsor.ai** > **Login**.
5. Paste your API key to complete the setup.

Once connected, you can pull data from Facebook Ads, Google Ads, GA4, Instagram, TikTok, and other platforms directly into your spreadsheet without any manual exporting.

## Method 3: Install the Python Package

Developers and data scientists can install the official Python connector.

### Requirements

- Python 2.7+ or Python 3.x
- A Windsor.ai account with an API key

### Installation

```bash
pip install pywindsorai
```

### Basic Usage

```python
from pywindsorai.client import Client
from pywindsorai.enums import LAST_7D

api_key = "your_api_key"
client = Client(api_key)

# Fetch campaign data from the last 7 days
campaign_data = client.connectors(
    date_preset=LAST_7D,
    fields=["date", "clicks", "spend", "impressions"]
)

print(campaign_data)
```

The package has a single dependency (`requests`) and supports all 325+ data sources available on Windsor.ai.

For more details, visit the [pywindsorai GitHub repository](https://github.com/windsor-ai/pywindsorai) or the [PyPI page](https://pypi.org/project/pywindsorai/).

## Method 4: Install the R Package

R users can install the `windsoraiR` package to pull marketing data into their R environment.

### Installation

```r
# Install from CRAN
install.packages("windsoraiR")

# Or install the development version from GitHub
devtools::install_github("windsor-ai/windsoraiR")
```

### Basic Usage

```r
library(windsoraiR)

data <- windsor_fetch(
  api_key = "your_api_key",
  date_preset = "last_7d",
  fields = c("date", "clicks", "spend")
)
```

Visit the [windsoraiR GitHub repository](https://github.com/windsor-ai/windsoraiR) for full documentation.

## Method 5: Download as a Desktop App (via WebCatalog)

If you prefer a dedicated desktop window rather than a browser tab, you can use WebCatalog.

### Steps

1. Visit the [Windsor.ai listing on WebCatalog](https://webcatalog.io/en/apps/windsor-ai).
2. Download and install **WebCatalog Desktop** for macOS or Windows.
3. Open WebCatalog and search for **Windsor.ai**.
4. Click **Install** to add Windsor.ai as a standalone desktop app.

This wraps Windsor.ai in its own window, giving you faster app switching, distraction-free access, and support for multiple accounts without juggling browser tabs.

## Method 6: Set Up Windsor MCP for AI Chat Tools

Windsor.ai offers an MCP (Model Context Protocol) integration that connects your marketing data to AI assistants like Claude, ChatGPT, Copilot, Gemini, Perplexity, and Cursor.

### Prerequisites

- An active Windsor.ai account
- At least one data source synced in your Windsor.ai dashboard

### Setup Steps

1. Log into your Windsor.ai dashboard.
2. Go to the **MCP integration** settings.
3. Select the AI tool you want to connect (Claude, ChatGPT, etc.).
4. Follow the platform-specific configuration instructions provided by Windsor.ai.
5. Once connected, you can query your marketing data using natural language in your AI chat tool.

Learn more in the [Windsor MCP announcement](https://windsor.ai/introducing-windsor-mcp/).

## Windsor.ai Pricing

Windsor.ai offers a **free 30-day trial** with no credit card required. After the trial, pricing depends on the plan and the number of data sources and destinations you need. Visit the [Windsor.ai pricing page](https://windsor.ai/attribution-pricing/) for current plans.

## Frequently Asked Questions

### Is Windsor.ai free to download?

Windsor.ai is a cloud-based platform with a free 30-day trial. The Python and R packages are free and open source. The Google Sheets add-on is free to install, but requires a Windsor.ai account to use.

### Does Windsor.ai require any coding?

No. The web dashboard and Google Sheets add-on are completely no-code. The Python and R packages are available for users who prefer programmatic access.

### What data sources does Windsor.ai support?

Windsor.ai supports over 325 data sources including Google Ads, Facebook Ads, Instagram, TikTok, Google Analytics (GA4), HubSpot, Shopify, LinkedIn Ads, Twitter Ads, Bing Ads, and many more.

### What operating systems does Windsor.ai work on?

Since Windsor.ai is web-based, it works on any operating system with a modern browser — Windows, macOS, Linux, and ChromeOS. The Python and R packages also work cross-platform. The WebCatalog desktop app is available for macOS and Windows.

### How long does setup take?

Most users can connect their first data source and destination in under 5 minutes. Windsor.ai handles schema mapping, data formatting, and sync scheduling automatically.
