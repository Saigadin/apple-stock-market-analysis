import pandas as pd
import ollama

# Load dataset
df = pd.read_csv(r"C:\Users\91995\Stock_Market_Project\data\cleaned_AAPL_stock.csv")

# Create dataset summary
summary = df.describe().to_string()

while True:

    # Ask user question
    question = input("\nAsk about the dataset (type 'exit' to stop): ")

    # Exit condition
    if question.lower() == "exit":
        print("Exiting AI analyst...")
        break

    # Create prompt for AI
    prompt = f"""
    You are a financial data analyst.

    Dataset summary:
    {summary}

    User question:
    {question}

    Provide a clear explanation.
    """

    # Send prompt to TinyLlama
    response = ollama.chat(
        model="tinyllama",
        messages=[{"role": "user", "content": prompt}]
    )

    # Print AI response
    print("\nAI:", response["message"]["content"])