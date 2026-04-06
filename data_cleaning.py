import pandas as pd

df = pd.read_csv(r"c:\Users\vashu\Downloads\salesdata.csv")

# Check data
print(df.head())
print(df.info())

# Handle nulls
df = df.dropna()

# Remove duplicates
df = df.drop_duplicates()

# Fix column formats
df['Order Date'] = pd.to_datetime(df['Order Date'], dayfirst=True, errors='coerce')

# Create new columns
df['Year'] = df['Order Date'].dt.year
df['Month'] = df['Order Date'].dt.month

# Save cleaned data
df.to_csv("cleaned_salesdata.csv", index=False)

df['Year'] = df['Order Date'].dt.year
df['Month'] = df['Order Date'].dt.month
df['Month Name'] = df['Order Date'].dt.month_name()

df.to_csv("data/cleaned_sales_data.csv", index=False)

df = df.dropna(subset=['Postal Code'])